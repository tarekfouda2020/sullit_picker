part of 'prescription_order_imports.dart';

class PrescriptionOrderController {
  final int orderId;

  PrescriptionOrderController({required this.orderId}) {
    loadOrder();
    loadSearchProducts(1,refresh: false);
    _searchPagingController.addPageRequestListener((pageKey) {
      loadSearchProducts(pageKey,refresh: true);
    },);
  }

  final List<OrderDetailsModel> ordersDetails = [];
  final BaseBloc<List<OrderDetailsModel>> ordersProductsCubit =
  BaseBloc<List<OrderDetailsModel>>([]);
  late ObsValue<List<VariantModel>> variantsObs;

  final ObsValue<String?> insuranceDiscountObs = ObsValue.withInit(null);
  final ObsValue<String?> bagsCountObs = ObsValue.withInit(null);

  final TextEditingController insuranceDiscountController = TextEditingController();
  final GlobalKey<FormState> insuranceDiscountFormKey = GlobalKey<FormState>();

  final TextEditingController bagsCountController = TextEditingController();
  final GlobalKey<FormState> bagsCountFormKey = GlobalKey<FormState>();

  final TextEditingController itemCoverageController = TextEditingController();
  final GlobalKey<FormState> itemCoverageFormKey = GlobalKey<FormState>();

  final TextEditingController itemInstructionsController = TextEditingController();
  final GlobalKey<FormState> itemInstructionsFormKey = GlobalKey<FormState>();

  final TextEditingController productSearchController = TextEditingController();
  final PagingController<int, SearchBarcodeModel> _searchPagingController = PagingController(firstPageKey: 1);

  final BaseBloc<PharmacyOrderModel> orderCubit = BaseBloc<PharmacyOrderModel>(null);
  final BaseBloc<bool> acceptedCubit = BaseBloc<bool>(false);


  PagingController<int, SearchBarcodeModel> get searchPagingController =>
      _searchPagingController;

  Future<void> loadOrder({bool setLoading = true}) async {
    final local = getIt<OrdersHelper>().getPrescriptionOrderState(orderId);
    if (local != null) {
      _restoreFromLocal(local);
    }else if(setLoading){
      orderCubit.loadingState();
      ordersProductsCubit.loadingState();
    }
    _getData(fromRemote: false);
    _getData();
  }


  Future<void> _getData({bool fromRemote = true}) async{
    final result = await getIt<HomeRepositories>().getPharmacyOrder(orderId,fromRemote: fromRemote);
    result.when(
      isSuccess: (data) {
        orderCubit.successState(data!);
        _syncAcceptedState(data);
        if (!data.isPendingReview) {
          final apiItems = _syncApiFields(data.ordersDetails ?? []);
          ordersDetails.clear();
          ordersDetails.addAll(apiItems);
          ordersProductsCubit.successState(List.of(ordersDetails));
        } else {
          ordersProductsCubit.successState([]);
        }
        _saveLocal();
      },
      isError: (error) {
        orderCubit.failedState(error, loadOrder);
        ordersProductsCubit.failedState(error, loadOrder);
      },
    );
  }

  void _restoreFromLocal(Map<String, dynamic> local) {
    final order = PharmacyOrderModel.fromJson(local['order'] as Map<String, dynamic>);
    final details = (local['details'] as List)
        .map((e) => OrderDetailsModel.fromJson(e as Map<String, dynamic>))
        .toList();
    insuranceDiscountObs.setValue(local['insurance_discount'] as String?);
    bagsCountObs.setValue(local['bags_count'] as String?);
    ordersDetails.clear();
    ordersDetails.addAll(details);
    orderCubit.successState(order);
    _syncAcceptedState(order);
    ordersProductsCubit.successState(List.of(ordersDetails));

    if (!order.isPendingReview) {
      _refreshFromApiInBackground();
    }
  }

  Future<void> _refreshFromApiInBackground() async {
    final result = await getIt<HomeRepositories>().getPharmacyOrder(orderId);
    result.when(
      isSuccess: (data) {
        if (data == null) return;
        final apiItems = _syncApiFields(data.ordersDetails ?? []);
        ordersDetails.clear();
        ordersDetails.addAll(apiItems);
        orderCubit.successState(data);
        _syncAcceptedState(data);
        ordersProductsCubit.successState(List.of(ordersDetails));
        _saveLocal();
        _updateHomeListItem(data);
      },
      isError: (_) {},
    );
  }

  void _removeHomeListItem() {
    final helper = getIt<OrdersHelper>();
    final current = helper.getAssignedOrders();
    current.removeWhere((o) => o.id == orderId);
    helper.saveAssignedOrders(current);
  }

  void _updateHomeListItem(PharmacyOrderModel updated) {
    final helper = getIt<OrdersHelper>();
    final current = helper.getAssignedOrders();
    final index = current.indexWhere((o) => o.id == orderId);
    if (index == -1) return;
    final deepJson = jsonDecode(jsonEncode(updated.toFlatJson())) as Map<String, dynamic>;
    current[index] = OrderModel.fromJson(deepJson);
    helper.saveAssignedOrders(current);
  }

  void _addToHomeListIfAbsent(PharmacyOrderModel updated) {
    final helper = getIt<OrdersHelper>();
    final current = helper.getAssignedOrders();
    final index = current.indexWhere((o) => o.id == orderId);
    final deepJson = jsonDecode(jsonEncode(updated.toFlatJson())) as Map<String, dynamic>;
    final item = OrderModel.fromJson(deepJson);
    if (index == -1) {
      current.add(item);
    } else {
      current[index] = item;
    }
    helper.saveAssignedOrders(current);
  }

  void _saveLocal() {
    final order = orderCubit.data;
    if (order == null) return;
    getIt<OrdersHelper>().savePrescriptionOrderState(
      orderId: orderId,
      order: order,
      details: List.of(ordersDetails),
      insuranceDiscount: insuranceDiscountObs.getValue(),
      bagsCount: bagsCountObs.getValue(),
    );
  }



  bool get isEditing => orderCubit.data?.isPendingReview == true;

  bool get isAwaitingCustomer =>
      (orderCubit.data!.awaitingCustomerCompletion) &&
      !(orderCubit.data!.isPendingReview );

  bool get canDispatch {
    final order = orderCubit.data;
    if (order == null) return false;
    return !order.isPendingReview &&
        !order.awaitingCustomerCompletion &&
        (order.isPaid || order.isCashOnDelivery);
  }

  bool get _hasMissingInsuranceCoverage =>
      ordersDetails.any((item) => item.insuranceCoveragePercentage == null);

  bool get requiresInsurance {
    final order = orderCubit.data;
    if (order == null) return false;
    return order.awaitingCustomerCompletion && order.requiresPrescriptionReview;
  }

  List<OrderDetailsModel> _syncApiFields(List<OrderDetailsModel> items) {
    return items.map((item) {
      final coverage = item.insuranceCoveragePercentageApi != null
          ? double.tryParse(item.insuranceCoveragePercentageApi!)
          : null;
      return item.copyWith(
        insuranceCoveragePercentage: item.insuranceCoveragePercentage ?? coverage,
        instructions: item.instructions ?? item.instructionsApi,
      );
    }).toList();
  }

  void _syncAcceptedState(PharmacyOrderModel order) {
    acceptedCubit.successState(order.isPreparing);
  }

  Future<void> acceptOrderForDispatch(BuildContext context) async {
    getIt<LoadingHelper>().showLoadingDialog();
    final result = await getIt<HomeRepositories>().acceptOrder(OrdersParams(id: orderId));
    getIt<LoadingHelper>().dismissDialog();
    result.when(
      isSuccess: (_) {
        acceptedCubit.successState(true);
        final order = orderCubit.data;
        if (order != null) {
          order.base.status = 'preparing';
          orderCubit.successState(order);
          _saveLocal();
        }
        AppSnackBar.showSuccessSnackBar(Translate.s.order_accepted_successfully);
      },
      isError: (_) {
        AppSnackBar.showSimpleToast(
          msg: Translate.s.order_processing_error,
          type: ToastType.error,
        );
      },
    );
  }

  Future<void> dispatchOrder(BuildContext context) async {
    getIt<LoadingHelper>().showLoadingDialog(useDefaultTime: false);
    PrepareOrderParams params = _dispatchOrderParams();
    var result = await getIt<HomeRepositories>().prepareOrder(params);
     BuildContext ctx = getIt<GlobalContext>().context();
    result.when(
      isSuccess: (_) async {
        getIt<OrdersHelper>().deletePrescriptionOrderState(orderId);
        getIt<OrdersHelper>().deleteOrderDetails(orderId);
        _removeHomeListItem();
         getIt<OrdersHelper>().getAllOrders(fromRemote: true, setLoading: false);
        getIt<LoadingHelper>().dismissDialog();
        AutoRouter.of(ctx).maybePop();
        AppSnackBar.showSuccessSnackBar(
          orderCubit.data?.orderDelivery == true
              ? Translate.s.order_ready_for_delivery
              : Translate.s.order_ready_for_pick_up,
        );
      },
      isError: (_) {
        getIt<LoadingHelper>().dismissDialog();
        AppSnackBar.showSimpleToast(
          msg: Translate.s.order_processing_error,
          type: ToastType.error,
        );
      },
    );
  }

  PrepareOrderParams _dispatchOrderParams() {
    return PrepareOrderParams(
    orderId: orderId,
    currentProductsDetails: [],
    deletedDetails: [],
    bagCount: orderCubit.data?.bagsCount,
  );
  }

  void onCompleteOrderPressed(BuildContext context) {
    if (!isEditing) return;
    if (ordersDetails.isEmpty) {
      AppSnackBar.showSimpleToast(
        msg: Translate.s.please_add_items_first,
        type: ToastType.error,
      );
      return;
    }

    if (requiresInsurance && _hasMissingInsuranceCoverage) {
      AppSnackBar.showSimpleToast(
        msg: Translate.s.please_enter_insurance_coverage_for_all_items,
        type: ToastType.error,
      );
      return;
    }

    if (requiresInsurance && insuranceDiscountObs.getValue() == null) {
      _openInsuranceDiscountDialog(context, cascade: true);
      return;
    }

    final bool hasBothValues =
        insuranceDiscountObs.getValue() != null && bagsCountObs.getValue() != null;
    if (hasBothValues) {
      _callAcceptPrescriptionPreviewApi(context);
    } else if(insuranceDiscountObs.getValue() == null){
      _openInsuranceDiscountDialog(context, cascade: true);
    }else if(bagsCountObs.getValue() == null){
      _openBagsCountDialog(context, cascade: true);
    }
  }

  void _openInsuranceDiscountDialog(BuildContext context, {bool cascade = false}) {
    insuranceDiscountController.text = insuranceDiscountObs.getValue() ?? '';
    showDialog(
      context: context,
      builder: (_) => InsuranceDiscountDialogWidget(
        discountController: insuranceDiscountController,
        formKey: insuranceDiscountFormKey,
        onConfirm: () => _submitInsuranceDiscount(context, cascade: cascade),
      ),
    );
  }

  void _submitInsuranceDiscount(BuildContext context, {bool cascade = false}) {
    if (insuranceDiscountFormKey.currentState?.validate() != true) return;
    insuranceDiscountObs.setValue(insuranceDiscountController.text.trim());
    _saveLocal();
    Navigator.pop(context);
    if (cascade) _openBagsCountDialog(context, cascade: true);
  }

  void _openBagsCountDialog(BuildContext context, {bool cascade = false}) {
    bagsCountController.text = bagsCountObs.getValue() ?? '';
    showDialog(
      context: context,
      builder: (_) => PrescriptionBagsCountDialogWidget(
        bagsCountController: bagsCountController,
        formKey: bagsCountFormKey,
        onConfirm: () => _submitBagsCount(context, cascade: cascade),
      ),
    );
  }

  void _submitBagsCount(BuildContext context, {bool cascade = false}) {
    if (bagsCountFormKey.currentState?.validate() != true) return;
    bagsCountObs.setValue(bagsCountController.text.trim());
    _saveLocal();
    Navigator.pop(context);
    if (cascade) _callAcceptPrescriptionPreviewApi(context);
  }

  void editInsuranceDiscount(BuildContext context) =>
      _openInsuranceDiscountDialog(context, cascade: false);

  void editBagsCount(BuildContext context) =>
      _openBagsCountDialog(context, cascade: false);

  Future<void> _callAcceptPrescriptionPreviewApi(BuildContext context) async {
    getIt<LoadingHelper>().showLoadingDialog();
     PrescriptionPreviewParams params = _prescriptionPreviewParams();
    var result = await getIt<HomeRepositories>().acceptPrescriptionPreview(params);
    getIt<LoadingHelper>().dismissDialog();
    result.when(
      isSuccess: (data) {
        if (data != null) _showInvoiceSheet(context, data);
      },
      isError: (error) {},
    );
  }

  PrescriptionPreviewParams _prescriptionPreviewParams() {
    return PrescriptionPreviewParams(
    orderId: orderId,
    insuranceDiscount:
        double.tryParse(insuranceDiscountObs.getValue() ?? '0') ?? 0.0,
    bagsQnt: int.tryParse(bagsCountObs.getValue() ?? '0') ?? 0,
    details: _orderItems(),
  );
  }

  List<PrescriptionPreviewItemParams> _orderItems() {
    return ordersDetails
      .map((item) => PrescriptionPreviewItemParams(
            variantId: item.addedVariantId ?? item.id,
            qnt: item.quantity,
            instructions: item.instructions,
            insuranceCoveragePercentage: item.insuranceCoveragePercentage,
          ))
      .toList();
  }

  void _showInvoiceSheet(BuildContext context, AcceptPrescriptionPreviewModel invoice) {
    final int bagsCount = int.tryParse(bagsCountObs.getValue() ?? '0') ?? 0;
    final double bagPrice = orderCubit.data?.bagPrice ?? 0.0;
    AppBottomSheets.showScrollableBodyFixedHeaderSheet(
      context: context,
      builder: (sheetContext) => PrescriptionInvoiceSheetWidget(
        invoice: invoice,
        bagsCount: bagsCount,
        bagPrice: bagPrice,
        onConfirm: () => _callAcceptPrescriptionApi(context, sheetContext),
      ),
    );
  }

  Future<void> _callAcceptPrescriptionApi(
      BuildContext pageContext, BuildContext sheetContext) async {
    AcceptPrescriptionParams params = _acceptPrescriptionParams();
    final result = await getIt<HomeRepositories>().acceptPrescription(params);
    result.when(
      isSuccess: (_) {
        Navigator.pop(sheetContext);
        final order = orderCubit.data;
        if (order != null) {
          order.base.awaitingCustomerCompletion = true;
          order.base.isPendingReview = false;
          orderCubit.successState(order);
          _addToHomeListIfAbsent(order);
        }
        _refreshFromApiInBackground();
        getIt<OrdersHelper>().getAllOrders(fromRemote: true, setLoading: false);
      },
      isError: (error) {},
    );
  }

  AcceptPrescriptionParams _acceptPrescriptionParams() {
    return AcceptPrescriptionParams(
      orderId: orderId,
      bagCount: int.tryParse(bagsCountObs.getValue() ?? '0') ?? 0,
      insuranceDiscount: requiresInsurance
          ? double.tryParse(insuranceDiscountObs.getValue() ?? '0')
          : null,
      details: ordersDetails
          .map((item) => AcceptPrescriptionItemParams(
                variantId: item.addedVariantId ?? item.id,
                qty: item.quantity,
                instructions: item.instructions,
                insuranceCoveragePercentage:
                    item.insuranceCoveragePercentage ?? 0,
                price: double.tryParse(item.unitPrice),
              ))
          .toList(),
    );
  }



  void showItemInsuranceCoverageDialog(BuildContext context, OrderDetailsModel item) {
    itemCoverageController.text = item.insuranceCoveragePercentage?.toString() ?? '';
    showDialog(
      context: context,
      builder: (_) => ItemInsuranceCoverageDialogWidget(
        coverageController: itemCoverageController,
        formKey: itemCoverageFormKey,
        onConfirm: () => _submitItemCoverage(context, item),
      ),
    );
  }

  void _submitItemCoverage(BuildContext context, OrderDetailsModel item) {
    if (itemCoverageFormKey.currentState?.validate() != true) return;
    final value = double.tryParse(itemCoverageController.text.trim());
    final index = ordersDetails.indexWhere((e) => e.addedVariantId == item.addedVariantId);
    if (index != -1) {
      ordersDetails[index] = ordersDetails[index].copyWith(insuranceCoveragePercentage: value);
      _refresh();
    }
    Navigator.pop(context);
  }

  void showApiInstructionsDialog(BuildContext context, OrderDetailsModel item) {
    final text = item.instructions ?? item.instructionsApi ?? '';
    showDialog(
      context: context,
      builder: (_) => ProductInstructionsDialogWidget(text: text),
    );
  }

  void showItemInstructionsDialog(BuildContext context, OrderDetailsModel item) {
    itemInstructionsController.text = item.instructions ?? '';
    showDialog(
      context: context,
      builder: (_) => ItemInstructionsDialogWidget(
        instructionsController: itemInstructionsController,
        formKey: itemInstructionsFormKey,
        onConfirm: () => _submitItemInstructions(context, item),
      ),
    );
  }

  void _submitItemInstructions(BuildContext context, OrderDetailsModel item) {
    if (itemInstructionsFormKey.currentState?.validate() != true) return;
    final value = itemInstructionsController.text.trim();
    final index = ordersDetails.indexWhere((e) => e.addedVariantId == item.addedVariantId);
    if (index != -1) {
      ordersDetails[index] = ordersDetails[index].copyWith(instructions: value.isEmpty ? null : value);
      _refresh();
    }
    Navigator.pop(context);
  }

  void showCustomerSheet(BuildContext context, CustomerModel customer) {
    AppBottomSheets.showScrollableBodyFixedHeaderSheet(
      context: context,
      builder: (sheetContext) =>
          PrescriptionCustomerSheetWidget(customer: customer,controller: this),
    );
  }

  int attachmentCount(PharmacyOrderModel order) {
    int count = 0;
    if (order.prescriptionAttachments?.isNotEmpty == true) count++;
    if (order.insuranceAttachments?.isNotEmpty == true) count++;
    if (order.insuranceCompany != null) count++;
    if (order.identityDocumentFile != null) count++;
    return count;
  }

  void showAttachmentsSheet(BuildContext context) {
    final order = orderCubit.data;
    if (order == null) return;
    final items = _buildAttachmentItems(context, order);
    if (items.isEmpty) return;
    AppBottomSheets.showScrollableBodyFixedHeaderSheet(
      context: context,
      builder: (sheetContext) => PrescriptionAttachmentsSheetWidget(items: items),
    );
  }

  List<AttachmentRowItem> _buildAttachmentItems(BuildContext context, PharmacyOrderModel order) {
    final items = <AttachmentRowItem>[];

    if (order.prescriptionAttachments?.isNotEmpty == true) {
      items.add(AttachmentRowItem(
        icon: Icons.description_outlined,
        label: Translate.s.prescription_attachments,
        onTap: () => _openAttachmentImages(
          context,
          Translate.s.prescription_attachments,
          order.prescriptionAttachments!
              .map((a) => a.url)
              .toList(),
        ),
      ));
    }

    if (order.insuranceAttachments?.isNotEmpty == true) {
      items.add(AttachmentRowItem(
        icon: Icons.shield_outlined,
        label: Translate.s.insurance_attachments,
        onTap: () => _openAttachmentImages(
          context,
          Translate.s.insurance_attachments,
          order.insuranceAttachments!
              .where((a) => a.type == 'image')
              .map((a) => a.url)
              .toList(),
        ),
      ));
    }

    if (order.insuranceCompany != null) {
      items.add(AttachmentRowItem(
        icon: Icons.business_outlined,
        label: Translate.s.insurance_company,
        onTap: () => _showInsuranceCompanySheet(context, order.insuranceCompany!),
      ));
    }

    if (order.identityDocumentFile != null) {
      items.add(AttachmentRowItem(
        icon: Icons.badge_outlined,
        label: Translate.s.identity_document,
        onTap: () => _openAttachment(context, order.identityDocumentFile!),
      ));
    }

    return items;
  }

  void _openAttachment(BuildContext context, String url) {
    if (url.toLowerCase().endsWith('.pdf')) {
      AutoRouter.of(context).push(PdfViewRoute(url: url));
    } else {
      AutoRouter.of(context).push(ImageZoomRoute(image: url));
    }
  }

  void _openAttachmentImages(BuildContext context, String title, List<String> imageUrls) {
    if (imageUrls.isEmpty) return;
    if (imageUrls.length == 1) {
      _openAttachment(context, imageUrls.first);
    } else {
      AppBottomSheets.showScrollableBodyFixedHeaderSheet(
        context: context,
        builder: (sheetContext) => PrescriptionImageViewerSheetWidget(
          title: title,
          urls: imageUrls,
        ),
      );
    }
  }

  void _showInsuranceCompanySheet(BuildContext context, InsuranceCompanyModel company) {
    AppBottomSheets.showScrollableBodyFixedHeaderSheet(
      context: context,
      builder: (sheetContext) =>
          PrescriptionInsuranceCompanySheetWidget(company: company),
    );
  }

  void dispose() {
    insuranceDiscountController.dispose();
    bagsCountController.dispose();
    itemCoverageController.dispose();
    itemInstructionsController.dispose();
    productSearchController.dispose();
    _searchPagingController.dispose();
  }

  void showProductSearchSheet(BuildContext context) {
    if (!isEditing) return;
    AppBottomSheets.showScrollableBodyFixedHeaderSheet(
      context: context,
      builder: (sheetCtx) =>
          PrescriptionSearchProductSheetWidget(controller: this),
    );
  }

  Future<void> loadSearchProducts(int page,{bool refresh = true}) async {
    final params = _productSearchParams(page, refresh);
    final result = await getIt<HomeRepositories>().searchProducts(params);
    result.when(
      isSuccess: (data) {
        final list = data ?? <SearchBarcodeModel>[];
        final isLast = list.length < ApplicationConstants.paginationLimit;
        if (page == 1) _searchPagingController.itemList = [];
        if (isLast) {
          _searchPagingController.appendLastPage(list);
        } else {
          _searchPagingController.appendPage(list, page + 1);
        }
      },
      isError: (error) {
        _searchPagingController.error = error;
      },
    );
  }

  ProductSearchParams _productSearchParams(int page, bool refresh) {
    var text = productSearchController.text.trim();
    return ProductSearchParams(
    text: text,
    paginParams: GenericPaginateParams(currentPage: page, refresh: refresh),
  );
  }

  void onProductSearchChanged(String text) {
    DebounceHelper.instance.startSearch(
      value: text,
      onSearch: (_) => _searchPagingController.refresh(),
    );
  }

  void onSelectSearchProduct(BuildContext sheetContext, SearchBarcodeModel data) {
    Navigator.pop(sheetContext);
    final BuildContext ctx = getIt<GlobalContext>().context();
    _handleScannedProduct(ctx, data);
  }

  Future<void> scanAndAddProduct(BuildContext context) async {
    if (!isEditing) return;
    final String? barcode = await getIt<BarcodeService>().scanBarcode(context);
    if (barcode == null || barcode.isEmpty) return;

    // await _searchAndAddByBarcode(context, "11135");
    await _searchAndAddByBarcode(context, barcode);
  }

  Future<void> _searchAndAddByBarcode(
      BuildContext context, String barcode) async {
    getIt<LoadingHelper>().showLoadingDialog();
    final params = ReplacedProductParams(barcode: barcode);
    final result = await getIt<HomeRepositories>().searchByBarcode(params);
    getIt<LoadingHelper>().dismissDialog();
    result.when(
      isSuccess: (data) {
        AppSnackBar.showSuccessSnackBar(
          "${Translate.s.product_scanned}, ${Translate.s.with_barcode} $barcode",
        );
        _handleScannedProduct(context, data!);
      },
      isError: (error) {
        AppSnackBar.showSimpleToast(
          msg: Translate.s.product_not_found,
          type: ToastType.error,
        );
      },
    );
  }


  void _handleScannedProduct(BuildContext context, SearchBarcodeModel data) {
    final variants = data.variants;
    if (variants != null && variants.length > 1) {
      showVariantsBottomSheet(context, data);
    } else {
      _addVariant(data, data.variant);
    }
  }

  void initializeVariants(List<VariantModel>? variants) {
    variantsObs = ObsValue.withInit(List.of(variants ?? []));
  }

  void toggleVariant(int index) {
    final current = List.of(variantsObs.getValue());
    current[index] =
        current[index].copyWith(isSelected: !(current[index].isSelected ?? false));
    variantsObs.setValue(current);
  }

  Future<void> showVariantsBottomSheet(
      BuildContext context, SearchBarcodeModel data) {
    initializeVariants(data.variants);
    return AppBottomSheets.showScrollableBodyFixedHeaderSheet(
      context: context,
      builder: (sheetContext) => VariantsBottomSheetWidget(
        data: data,
        variantsObs: variantsObs,
        onToggle: (index) => toggleVariant(index),
        onConfirm: (selected) {
          Navigator.pop(sheetContext);
          for (final variant in selected) {
            _addVariant(data, variant);
          }
        },
      ),
    );
  }

  void _addVariant(SearchBarcodeModel data, VariantModel variant) {
    final existingIndex =
        ordersDetails.indexWhere((e) => e.addedVariantId == variant.id);
    if (existingIndex != -1) {
      final existing = ordersDetails[existingIndex];
      ordersDetails[existingIndex] =
          existing.copyWith(quantity: existing.quantity + 1);
    } else {
      ordersDetails.add(_buildOrderDetails(data, variant));
    }
    _refresh();
  }

  OrderDetailsModel _buildOrderDetails(
      SearchBarcodeModel data, VariantModel variant) {
    return OrderDetailsModel(
      id: data.id,
      variation: variant.name,
      quantity: 1,
      price: variant.mainPrice,
      unitPrice: variant.mainPrice,
      newVariantId: variant.id,
      addedVariantId: variant.id,
      pickerNotes: "",
      currentStock: variant.currentStock,
      product: ProductModel(
        id: data.id,
        name: data.name,
        barcode: data.barcode,
        unit: variant.options,
        thumbnailImage: data.thumbnailImage,
        isFresh: false,
        productStatus: ProductStatusEnum.added,
        pickedQuantity: 0,
        productPickedPercent: 0.0,
        showEditPrice: false,
      ),
    );
  }

  void updateQuantity(OrderDetailsModel item, int newQuantity) {
    if (newQuantity < 1) return;
    final stock = item.currentStock;
    if (stock != null && newQuantity > stock) {
      AppSnackBar.showSimpleToast(
        msg: Translate.s.only_stock_available(stock.toString()),
        type: ToastType.error,
      );
      return;
    }
    final index =
        ordersDetails.indexWhere((e) => e.addedVariantId == item.addedVariantId);
    if (index == -1) return;
    ordersDetails[index] = ordersDetails[index].copyWith(quantity: newQuantity);
    _refresh();
  }

  void removeItem(OrderDetailsModel item) {
    ordersDetails.removeWhere((e) => e.addedVariantId == item.addedVariantId);
    _refresh();
  }

  void _refresh() {
    ordersProductsCubit.successState(List.of(ordersDetails));
    _saveLocal();
  }
}
