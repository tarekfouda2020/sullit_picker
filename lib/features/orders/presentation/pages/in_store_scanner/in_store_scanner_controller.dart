part of 'in_store_scanner_imports.dart';

class InStoreScannerController {
  final ObsValue<String> orderNoObs = ObsValue<String>.withInit('');
  final ObsValue<bool> productScanModeObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> cameraClosedObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> canRescanObs = ObsValue<bool>.withInit(true);
  final ObsValue<int> itemsCountObs = ObsValue<int>.withInit(0);
  final ObsValue<double> pickedPercentObs = ObsValue<double>.withInit(0);
  final ObsValue<List<MatchingProductItem>> missedItemsObs =
      ObsValue<List<MatchingProductItem>>.withInit(const []);
  final ObsValue<List<MatchingProductItem>> extraItemsObs =
      ObsValue<List<MatchingProductItem>>.withInit(const []);
  final TextEditingController barcodeTextController = TextEditingController();
  final TextEditingController orderNumberTextController =
      TextEditingController();
  final MobileScannerController scannerController = MobileScannerController(
    autoStart: false,
  );

  OrderModel? _order;
  List<InStoreScannedItem> _scanned = [];
  bool _isScanned = false;
  bool _isBusy = false;

  String get orderNo => orderNoObs.getValue();

  bool get hasMismatch {
    return missedItemsObs.getValue().isNotEmpty ||
        extraItemsObs.getValue().isNotEmpty;
  }

  Future<void> init(BuildContext context) async {
    final session = getIt<InStoreOrdersHelper>().getSession();
    if (session != null) {
      await _applySession(session);
      if (!context.mounted) return;
      await _refreshOrderInBackground(context);
    }
    if (!context.mounted) return;
    await Future<void>.delayed(const Duration(milliseconds: 300));
    if (!context.mounted) return;
    await _openCamera();
  }

  /// Returns barcode once. Returns null if locked or empty.
  String? detectBarcode(BarcodeCapture capture) {
    if (_isScanned) return null;
    if (capture.barcodes.isEmpty) return null;

    final barcode = capture.barcodes.first.rawValue;
    if (barcode == null || barcode.isEmpty) return null;

    _isScanned = true;
    return barcode;
  }

  void resetScan() {
    _isScanned = false;
  }

  Future<void> resetScanDelayed([
    Duration duration = const Duration(milliseconds: 800),
  ]) async {
    await Future<void>.delayed(duration);
    _isScanned = false;
  }

  Future<void> onBarcodeAccepted(BuildContext context, String sku) async {
    if (productScanModeObs.getValue()) {
      await _handleProductScan(context, sku);
    } else {
      await _acceptOrderById(context, sku);
    }
  }

  void submitOrderNumber(BuildContext context) {
    final orderNumber = orderNumberTextController.text.trim();
    if (orderNumber.isEmpty) return;
    _acceptOrderById(context, orderNumber);
  }

  void submitBarcodeText(BuildContext context) {
    final sku = barcodeTextController.text.trim();
    if (sku.isEmpty) return;
    onBarcodeAccepted(context, sku);
  }

  void startMatching(BuildContext context) {
    if (itemsCountObs.getValue() < 1 || _order == null) return;
    _computeMatching();
    if (!hasMismatch) {
      showDialog(
        context: context,
        builder: (context) => MatchingResultsDialogWidget(
          controller: this,
          onConfirm: () => confirmOrder(context),
        ),
      );
      return;
    }
    showMatchingResultsSheet(context);
  }

  void showMatchingResultsSheet(BuildContext context) {
    AppBottomSheets.showScrollableBody(
      context: context,
      constraints: BoxConstraints(
        maxHeight: MediaQuery.sizeOf(context).height * 0.92,
      ),
      builder: (context) => MatchingResultsSheetWidget(controller: this),
    );
  }

  void rescan(BuildContext context) {
    AutoRouter.of(context).maybePop();
    resetScan();
  }

  Future<void> confirmOrder(BuildContext context) async {
    AutoRouter.of(context).maybePop();
    await _dispatchOrder();
  }

  String pickedLabel(double percent) {
    final value = percent % 1 == 0
        ? percent.toStringAsFixed(0)
        : percent.toStringAsFixed(2);
    return '${Translate.s.picked} $value%';
  }

  Future<void> dispose() async {
    barcodeTextController.dispose();
    orderNumberTextController.dispose();
    try {
      await scannerController.stop();
    } catch (e, stack) {
      debugPrint('in-store camera stop error: $e');
      debugPrint('$stack');
    }
    scannerController.dispose();
  }



  Future<void> _acceptOrderById(BuildContext context, String raw) async {
    if (_isBusy) {
      await resetScanDelayed();
      return;
    }
    if (productScanModeObs.getValue() || _order != null) {
      AppSnackBar.showSimpleToast(
        msg: Translate.s.in_store_one_order_only,
        type: ToastType.info,
      );
      await resetScanDelayed();
      return;
    }
    final id = _parseOrderId(raw);
    if (id == null) {
      AppSnackBar.showSimpleToast(
        msg: Translate.s.invalid_order_id,
        type: ToastType.error,
      );
      await resetScanDelayed();
      return;
    }
    _isBusy = true;
    getIt<LoadingHelper>().showLoadingDialog();
    OrderModel? order;
    final result = await getIt<HomeRepositories>().acceptOrder(OrdersParams(id: id));
    if (result.isSuccess) {
      order = result.data;
    } else {
      final details = await getIt<HomeRepositories>().showOrders(OrdersParams(id: id));
      order = details.data;
    }
    if (order != null &&
        (order.ordersDetails == null || order.ordersDetails!.isEmpty)) {
      final details = await getIt<HomeRepositories>()
          .showOrders(OrdersParams(id: order.id));
      order = details.data ?? order;
    }
    getIt<LoadingHelper>().dismissDialog();
    if (order == null) {
      AppSnackBar.showErrorSnackBar(
        error: BaseError.unknown(msg: Translate.s.order_accepted_failed),
      );
      _isBusy = false;
      await resetScanDelayed();
      return;
    }
    await _onOrderAccepted(order);
    AppSnackBar.showSuccessSnackBar(Translate.s.order_accepted_successfully);
    _isBusy = false;
    await resetScanDelayed();
  }

  Future<void> _onOrderAccepted(OrderModel data) async {
    OrderModel order = data;
    final currentOrders = getIt<OrdersHelper>().assignedOrdersCubit.data ?? [];
    if (!currentOrders.any((e) => e.id == order.id)) {
      final updatedOrders = List<OrderModel>.from(currentOrders)..add(order);
      getIt<OrdersHelper>().assignedOrdersCubit.successState(updatedOrders);
      await getIt<OrdersHelper>().saveAssignedOrders(updatedOrders);
    }
    getIt<OrdersHelper>().getAllOrders();
    _order = order;
    _scanned = [];
    await _persist();
    _syncUiFromOrder();
    await _recalcProgress();
  }

  Future<void> _handleProductScan(BuildContext context, String sku) async {
    if (_isBusy || _order == null) {
      await resetScanDelayed();
      return;
    }
    _isBusy = true;
    final result = await getIt<InStoreOrdersHelper>().searchByBarcode(sku);
    final data = result.data;
    if (!result.isSuccess || data == null) {
      AppSnackBar.showSimpleToast(
        msg: Translate.s.product_not_found,
        type: ToastType.error,
      );
      _isBusy = false;
      await resetScanDelayed();
      return;
    }
    if (!context.mounted) {
      _isBusy = false;
      await resetScanDelayed();
      return;
    }
    await _applyScannedProduct(context, data);
    _isBusy = false;
    await resetScanDelayed();
  }

  Future<void> _applyScannedProduct(
    BuildContext context,
    SearchBarcodeModel data,
  ) async {
    final nextLine = _nextUnfilledMatchingLine(data);
    if (nextLine != null) {
      _addOrIncrementScan(
        InStoreScannedItem(
          orderLineId: nextLine.id,
          productId: data.id,
          variantId: _variantIdForLine(nextLine, data),
          qnt: 1,
          isExtra: false,
          name: data.name,
          imageUrl: data.thumbnailImage,
          price: data.variant.mainPrice,
          barcode: data.barcode,
        ),
      );
      await _persist();
      await _recalcProgress();
      _toastProductScanned(data.barcode);
      _toastAllProductsScannedIfDone();
      return;
    }
    if (_hasMatchingOrderLine(data)) {
      AppSnackBar.showSimpleToast(
        msg: Translate.s.cannot_scan_more_than_order_qty,
        type: ToastType.info,
      );
      return;
    }
    final extraIndex = _indexOfScanned(
      productId: data.id,
      variantId: data.variant.id,
      barcode: data.barcode,
      isExtra: true,
    );
    if (extraIndex == -1) {
      final shouldAdd = await _confirmExtraItem(context);
      if (!shouldAdd) return;
    }
    _addOrIncrementScan(
      InStoreScannedItem(
        productId: data.id,
        variantId: data.variant.id,
        qnt: 1,
        isExtra: true,
        name: data.name,
        imageUrl: data.thumbnailImage,
        price: data.variant.mainPrice,
        barcode: data.barcode,
      ),
    );
    await _persist();
    await _recalcProgress();
    _toastProductScanned(data.barcode);
  }

  void _toastProductScanned(String barcode) {
    AppSnackBar.showSuccessSnackBar(
      "${Translate.s.product_scanned}, ${Translate.s.with_barcode} $barcode",
    );
  }

  void _toastAllProductsScannedIfDone() {
    final expectedTotal = _expectedTotalQty();
    if (expectedTotal <= 0) return;
    if (_expectedPickedQty() < expectedTotal) return;
    AppSnackBar.showSuccessSnackBar(Translate.s.all_products_scanned);
  }

  Future<bool> _confirmExtraItem(BuildContext context) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => ExtraItemConfirmDialogWidget(
        onYes: () => Navigator.pop(context, true),
        onNo: () => Navigator.pop(context, false),
      ),
    );
    return result == true;
  }

  Future<void> _refreshOrderInBackground(BuildContext context) async {
    final order = _order;
    if (order == null) return;
    final oldFingerprint = _itemsFingerprint(order);
    final result = await getIt<HomeRepositories>()
        .showOrders(OrdersParams(id: order.id));
    if (!result.isSuccess || result.data == null) {
      await getIt<InStoreOrdersHelper>().deleteSession();
      _clearSessionState();
      AppSnackBar.showSimpleToast(
        msg: Translate.s.in_store_order_unavailable,
        type: ToastType.error,
      );
      return;
    }
    final data = result.data!;
    if (_itemsFingerprint(data) != oldFingerprint) {
      _order = data;
      _scanned = [];
      await _persist();
      _syncUiFromOrder();
      await _recalcProgress();
      AppSnackBar.showSimpleToast(
        msg: Translate.s.in_store_order_items_updated,
        type: ToastType.info,
      );
      return;
    }
    _order = data;
    await _persist();
    _syncUiFromOrder();
  }

  Future<void> _dispatchOrder() async {
    final order = _order;
    if (order == null) return;
    _computeMatching();
    final params = _prepareOrderParams(order);
    final result = await getIt<HomeRepositories>().prepareOrder(params);
    if (!result.isSuccess) {
      AppSnackBar.showSimpleToast(
        msg: Translate.s.order_processing_error,
        type: ToastType.error,
      );
      return;
    }
    final assigned = getIt<OrdersHelper>().assignedOrdersCubit.data;
    final updatedList = (assigned ?? <OrderModel>[]).toList();
    updatedList.removeWhere((element) => element.id == order.id);
    await getIt<OrdersHelper>().saveAssignedOrders(updatedList);
    await getIt<OrdersHelper>().getAllOrders();
    await getIt<InStoreOrdersHelper>().deleteSession();
    await getIt<OrdersHelper>().deleteOrderDetails(order.id);
    _clearSessionState();
    AppSnackBar.showSuccessSnackBar(
      order.orderDelivery
          ? Translate.s.order_ready_for_delivery
          : Translate.s.order_ready_for_pick_up,
    );
    AutoRouter.of(getIt<GlobalContext>().context()).maybePop();
  }

  PrepareOrderParams _prepareOrderParams(OrderModel order) {
    final lines = order.ordersDetails ?? [];
    final current = <OrderDetailsModel>[];
    final deleted = <OrderDetailsModel>[];
    for (final line in lines) {
      final take = _scannedQtyForLine(line.id);
      if (take <= 0) {
        deleted.add(line.copyWith(pickerNotes: line.pickerNotes ?? ''));
        continue;
      }
      if (take < line.quantity) {
        current.add(
          line.copyWith(
            quantity: take,
            pickerNotes: line.pickerNotes ?? '',
            product: line.product!.copyWith(
              productStatus: ProductStatusEnum.qntModified,
            ),
          ),
        );
      }
    }
    for (final extra in _scanned.where((e) => e.isExtra)) {
      current.add(
        OrderDetailsModel(
          id: extra.variantId,
          variation: '',
          quantity: extra.qnt,
          price: extra.price,
          unitPrice: extra.price,
          addedVariantId: extra.variantId,
          pickerNotes: '',
          product: ProductModel(
            id: extra.variantId,
            name: extra.name,
            barcode: extra.barcode,
            unit: '',
            thumbnailImage: extra.imageUrl,
            isFresh: false,
            productStatus: ProductStatusEnum.added,
          ),
        ),
      );
    }
    return PrepareOrderParams(
      orderId: order.id,
      currentProductsDetails: current,
      deletedDetails: deleted,
    );
  }

  void _computeMatching() {
    final missed = <MatchingProductItem>[];
    final extra = <MatchingProductItem>[];
    final lines = _order?.ordersDetails ?? <OrderDetailsModel>[];
    for (final line in lines) {
      final take = _scannedQtyForLine(line.id);
      if (take < line.quantity) {
        missed.add(
          MatchingProductItem(
            name: line.product?.name ?? '',
            imageUrl: line.product?.thumbnailImage ?? '',
            price: line.unitPrice,
            barcode: line.product?.barcode ?? '',
          ),
        );
      }
    }
    for (final item in _scanned.where((e) => e.isExtra)) {
      extra.add(
        MatchingProductItem(
          name: item.name,
          imageUrl: item.imageUrl,
          price: item.price,
          barcode: item.barcode,
        ),
      );
    }
    missedItemsObs.setValue(missed);
    extraItemsObs.setValue(extra);
    canRescanObs.setValue(missed.isNotEmpty);
  }

  void _addOrIncrementScan(InStoreScannedItem item) {
    final index = _indexOfScanned(
      orderLineId: item.orderLineId,
      productId: item.productId,
      variantId: item.variantId,
      barcode: item.barcode,
      isExtra: item.isExtra,
    );
    if (index == -1) {
      _scanned = [..._scanned, item];
      return;
    }
    final current = _scanned[index];
    var nextQnt = current.qnt + item.qnt;
    if (!item.isExtra && item.orderLineId != 0) {
      OrderDetailsModel? line;
      for (final e in _order?.ordersDetails ?? <OrderDetailsModel>[]) {
        if (e.id == item.orderLineId) {
          line = e;
          break;
        }
      }
      final maxQnt = line?.quantity ?? 0;
      if (maxQnt > 0 && nextQnt > maxQnt) {
        nextQnt = maxQnt;
      }
    }
    if (nextQnt == current.qnt) return;
    final updated = [..._scanned];
    updated[index] = current.copyWith(qnt: nextQnt);
    _scanned = updated;
  }

  int _indexOfScanned({
    int orderLineId = 0,
    required int productId,
    required int variantId,
    required String barcode,
    required bool isExtra,
  }) {
    return _scanned.indexWhere((e) {
      if (e.isExtra != isExtra) return false;
      if (!isExtra && orderLineId != 0) {
        return e.orderLineId == orderLineId;
      }
      if (productId != 0 && e.productId == productId) return true;
      if (variantId != 0 && e.variantId == variantId) return true;
      return barcode.isNotEmpty && e.barcode == barcode;
    });
  }

  List<VariantModel> _scanVariants(SearchBarcodeModel data) {
    final variants = List<VariantModel>.from(data.variants ?? const []);
    if (!variants.any((variant) => variant.id == data.variant.id)) {
      variants.insert(0, data.variant);
    }
    return variants;
  }

  String _norm(String value) => value.trim().toLowerCase();

  bool _lineMatchesScan(OrderDetailsModel line, SearchBarcodeModel data) {
    if (line.product == null || line.product!.id != data.id) return false;
    final variation = _norm(line.variation);
    if (variation.isEmpty) return true;
    return _scanVariants(data).any((v) => _norm(v.name) == variation);
  }

  bool _hasMatchingOrderLine(SearchBarcodeModel data) {
    return (_order?.ordersDetails ?? <OrderDetailsModel>[])
        .any((line) => _lineMatchesScan(line, data));
  }

  OrderDetailsModel? _nextUnfilledMatchingLine(SearchBarcodeModel data) {
    for (final line in _order?.ordersDetails ?? <OrderDetailsModel>[]) {
      if (!_lineMatchesScan(line, data)) continue;
      if (_scannedQtyForLine(line.id) < line.quantity) return line;
    }
    return null;
  }

  int _variantIdForLine(OrderDetailsModel line, SearchBarcodeModel data) {
    final variation = _norm(line.variation);
    if (variation.isEmpty) return data.variant.id;
    for (final variant in _scanVariants(data)) {
      if (_norm(variant.name) == variation) return variant.id;
    }
    return data.variant.id;
  }

  int _scannedQtyForLine(int orderLineId) {
    return _scanned
        .where((e) => !e.isExtra && e.orderLineId == orderLineId)
        .fold<int>(0, (sum, e) => sum + e.qnt);
  }

  int _expectedTotalQty() {
    return (_order?.ordersDetails ?? <OrderDetailsModel>[])
        .fold<int>(0, (sum, e) => sum + e.quantity);
  }

  int _expectedPickedQty() {
    var total = 0;
    for (final line in _order?.ordersDetails ?? <OrderDetailsModel>[]) {
      final scanned = _scannedQtyForLine(line.id);
      total += scanned > line.quantity ? line.quantity : scanned;
    }
    return total;
  }

  Future<void> _recalcProgress({bool syncCamera = true}) async {
    final itemsCount = _scanned.fold<int>(0, (sum, e) => sum + e.qnt);
    itemsCountObs.setValue(itemsCount);
    final expectedTotal = _expectedTotalQty();
    final percent = expectedTotal == 0
        ? 0.0
        : (_expectedPickedQty() / expectedTotal) * 100;
    pickedPercentObs.setValue(percent);
    if (!syncCamera) return;
    final shouldClose = percent >= 100 && expectedTotal > 0;
    if (shouldClose != cameraClosedObs.getValue()) {
      await _setCameraClosed(shouldClose);
    }
  }

  Future<void> _openCamera() async {
    debugPrint(
      'in-store _openCamera '
      'isRunning=${scannerController.value.isRunning} '
      'isInitialized=${scannerController.value.isInitialized} '
      'error=${scannerController.value.error}',
    );
    cameraClosedObs.setValue(false);
    if (scannerController.value.isRunning) {
      debugPrint('in-store _openCamera skip, already running');
      return;
    }
    try {
      await scannerController.start();
      debugPrint(
        'in-store _openCamera started '
        'isRunning=${scannerController.value.isRunning} '
        'error=${scannerController.value.error}',
      );
    } catch (e, stack) {
      debugPrint('in-store _openCamera start failed: $e');
      debugPrint('$stack');
    }
  }

  Future<void> _setCameraClosed(bool closed) async {
    cameraClosedObs.setValue(closed);
    try {
      if (closed) {
        await scannerController.stop();
      } else {
        await scannerController.start();
      }
    } catch (_) {}
  }

  Future<void> _applySession(InStoreOrderSession session) async {
    _order = session.order;
    _scanned = session.scanned;
    _syncUiFromOrder();
    await _recalcProgress(syncCamera: false);
  }

  void _syncUiFromOrder() {
    final order = _order;
    productScanModeObs.setValue(order != null);
    orderNoObs.setValue(order?.code ?? '');
  }

  void _clearSessionState() {
    _order = null;
    _scanned = [];
    productScanModeObs.setValue(false);
    orderNoObs.setValue('');
    itemsCountObs.setValue(0);
    pickedPercentObs.setValue(0);
    missedItemsObs.setValue(const []);
    extraItemsObs.setValue(const []);
    _setCameraClosed(false);
  }

  Future<void> _persist() async {
    final order = _order;
    if (order == null) return;
    await getIt<InStoreOrdersHelper>().saveSession(
      InStoreOrderSession(order: order, scanned: _scanned),
    );
  }

  String _itemsFingerprint(OrderModel order) {
    final lines = [...(order.ordersDetails ?? [])];
    lines.sort((a, b) => (a.product?.id ?? 0).compareTo(b.product?.id ?? 0));
    return lines.map((e) => '${e.id}:${e.variation}:${e.quantity}').join('|');
  }

  int? _parseOrderId(String raw) {
    final trimmed = raw.trim();
    final direct = int.tryParse(trimmed);
    if (direct != null) return direct;
    final matches = RegExp(r'(\d+)').allMatches(trimmed);
    if (matches.isEmpty) return null;
    return int.tryParse(matches.last.group(1)!);
  }
}
