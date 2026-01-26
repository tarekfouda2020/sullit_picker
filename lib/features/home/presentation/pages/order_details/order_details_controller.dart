// ignore_for_file: use_build_context_synchronously

import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/bags_number_dialog_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/modify_bags_count_dialog_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/update_reason_dialog_widget.dart';

import 'order_details_imports.dart';

class OrderDetailsController {
  final ObsValue<bool> isAllPickedObs = ObsValue.withInit(false);
  final ObsValue<bool> refreshDeletedSheetObs = ObsValue.withInit(false);
  final ObsValue<double> enteredBagsPriceObs = ObsValue.withInit(0.0);
  final ObsValue<int> bagsCountObs = ObsValue<int>.withInit(0);
  final BaseBloc<OrderModel> detailsCubit = BaseBloc<OrderModel>();

  final TextEditingController newWeightController = TextEditingController();
  final TextEditingController newPriceController = TextEditingController();
  final TextEditingController pickerNoteController = TextEditingController();
  final TextEditingController newCountController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final GlobalKey<FormState> replaceReasonKey = GlobalKey<FormState>();

  final GlobalKey<FormState> bagsCountFormKey = GlobalKey<FormState>();

  final GlobalKey<FormState> newQntFormKey = GlobalKey<FormState>();

  late final int orderId;
  late final DateTime targetTime;

  OrderDetailsController(int id, DateTime time) {
    orderId = id;
    targetTime = time;
    getDetails();
  }

  OrderModel get _detailsData => detailsCubit.data!;

  OrderModel get getDetailsData => _detailsData;

  void updateDetailsCubit({OrderModel? data}) =>
      detailsCubit.successState(data ?? _detailsData);

  void updateIsAllPickedObs() {
    isAllPickedObs.setValue(isAllProductsPicked);
  }

  void onPressReplace(BuildContext context, OrderDetailsModel item) {
    if (isProductFullPicked(item)) {
      return;
    }
    bool replacePermission = _detailsData.allowReplacement;
    if (replacePermission) {
      showReplaceDialog(context, item);
    } else {
      showDeleteDialog(context, item.id);
    }
  }

  void showReplaceDialog(BuildContext context, OrderDetailsModel currentItem) {
    showDialog(
        context: context,
        builder: (context) {
          return DialogActionWidget(
            description: Translate.of(context).are_you_sure_replace,
            buttonGreenTitle: Translate.of(context).yes_replace,
            buttonRedTitle: Translate.of(context).app_cancel,
            // greenOnTap: () => scanProduct(context, currentItem),
            greenOnTap: () => showReturnReasonDialog(context, currentItem),
          );
        });
  }

  void showReturnReasonDialog(
      BuildContext context, OrderDetailsModel currentItem) {
    Navigator.pop(context);
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) {
        return UpdateReasonDialogWidget(
          controller: this,
          onPressSubmit: () => confirmReplaceReason(ctx, currentItem),
        );
      },
    );
  }

  void confirmReplaceReason(
      BuildContext context, OrderDetailsModel currentItem) {
    if (replaceReasonKey.currentState!.validate()) {
      currentItem.pickerNotes = pickerNoteController.text;
      pickerNoteController.clear();
      scanProduct(context, currentItem);
    }
  }

  Future<void> scanProduct(
      BuildContext context, OrderDetailsModel oldItem) async {
    Navigator.pop(context);
    // BuildContext ctx = getIt<GlobalContext>().context();
    // 62211628
    // 31610
    // getProductWithBarcode(ctx, "31610", oldItem);

    String? barcode = await getIt<BarcodeService>().scanBarcode(context);
    if (barcode != null && barcode.isNotEmpty) {
      BuildContext ctx = getIt<GlobalContext>().context();
      AppSnackBar.showSuccessSnackBar(
        Translate.of(ctx).product_scanned,
      );
      getProductWithBarcode(ctx, barcode, oldItem);
    }
  }

  Future<void> getProductWithBarcode(
      BuildContext context, String barcode, OrderDetailsModel oldItem) async {
    getIt<LoadingHelper>().showLoadingDialog();
    ReplacedProductParams params = _replacedProductParams(barcode);
    var result = await getIt<HomeRepositories>().searchByBarcode(params);
    result.when(
      isSuccess: (data) {
        addNewProduct(data!, oldItem);
      },
      isError: (error) {
        AppSnackBar.showSimpleToast(
          msg: Translate.of(context).product_not_found,
          type: ToastType.error,
        );
      },
    );
    getIt<LoadingHelper>().dismissDialog();
  }

  void updateReplacedProduct(
      SearchBarcodeModel newData, OrderDetailsModel oldItem) {
    double newPrice = double.parse(newData.variant.mainPrice);
    double oldItemPrice = double.parse(oldItem.unitPrice);
    if (newPrice > oldItemPrice) {
      AppSnackBar.showSimpleToast(
          msg: Translate.s.cannot_replace_higher_price(oldItemPrice.toString()),
          type: ToastType.error,
          gravity: ToastGravity.BOTTOM);
      return;
    }

    int index =
        _detailsData.ordersDetails!.indexWhere((e) => e.id == oldItem.id);
    OrderDetailsModel updatedItem = oldItem.copyWith(
      price: newData.variant.mainPrice,
      unitPrice: newData.variant.mainPrice,
      newVariantId: newData.variant.id,
      variation: "",
      product: oldItem.product!.copyWith(
          name: newData.name,
          thumbnailImage: newData.thumbnailImage,
          pickedQuantity: 0,
          productPickedPercent: 0,
          productStatus: ProductStatusEnum.replaced,
          barcode: newData.barcode),
    );
    _detailsData.ordersDetails![index] = updatedItem;

    /// add replaced products in a separated list
    _detailsData.changedProducts!.addIf(
        (OrderDetailsModel e) => !_detailsData.changedProducts!.contains(e.id),
        oldItem);
    updateDetailsCubit();
    getIt<OrdersHelper>().saveOrderDetails(_detailsData);
    updateSameOrderInList(_detailsData);
  }

  void addNewProduct(SearchBarcodeModel newData, OrderDetailsModel oldItem) {
    double newPrice = double.parse(newData.variant.mainPrice);
    double oldItemPrice = double.parse(oldItem.unitPrice);
    if (newPrice > oldItemPrice) {
      AppSnackBar.showSimpleToast(
          msg: Translate.s.cannot_replace_higher_price(oldItemPrice.toString()),
          type: ToastType.error,
          gravity: ToastGravity.BOTTOM);
      return;
    }
    int index =
        _detailsData.ordersDetails!.indexWhere((e) => e.id == oldItem.id);
    if (oldItem.quantity > 0) {
      /// using  (ProductStatusEnum.qntModified) and  (.isQntModified >> see PrepareOrderParams)
      /// to define that...this item qnt has been modified when sending in prepare order params
      /// and sending remain qnt

      oldItem.quantity = oldItem.quantity - 1;
      oldItem.product!.productStatus = ProductStatusEnum.qntModified;
      _detailsData.ordersDetails![index] = oldItem;
    }
    List<int> existedNewVariantIds =
        _detailsData.ordersDetails!.map((e) => e.addedVariantId!).toList();
    bool isNewItemAddedBefore =
        existedNewVariantIds.contains(newData.variant.id);

    OrderDetailsModel updatedItem = oldItem.copyWith(
      price: newData.variant.mainPrice,
      unitPrice: newData.variant.mainPrice,
      addedVariantId: newData.variant.id,
      variation: "",
      product: oldItem.product!.copyWith(
          name: newData.name,
          thumbnailImage: newData.thumbnailImage,
          barcode: newData.barcode),
    );

    /// if order picked first then replaced after that, recalculate the percent
    /// We need to recalculate the percent based on the new quantity
    /// without incrementing pickedQuantity (since we're not picking, just adjusting for replacement)
    if (oldItem.product!.pickedQuantity! > 0) {
      _recalculateProductPercent(oldItem);
    }
    if (oldItem.quantity == 0) {
      /// in the last replace add it to removed list will be send as a deleted item in api-params
      _detailsData.ordersDetails!.removeAt(index);
      _detailsData.deletedOrders!.add(oldItem);
    }
    if (isNewItemAddedBefore) {
      _updateExistItem(newData);
    } else {
      _addNewItem(updatedItem, index);
    }
    //
    // /// add the original one we press replace on it in qntChangedProducts list
    // _detailsData.qntChangedProducts!.addIf(
    //     (OrderDetailsModel e) => !_detailsData.changedProducts!.contains(e.id),
    //     oldItem);
    updateDetailsCubit();
    getIt<OrdersHelper>().saveOrderDetails(_detailsData);
    updateSameOrderInList(_detailsData);
  }

  void _updateExistItem(SearchBarcodeModel newData) {
    int newItemIndex = _detailsData.ordersDetails!
        .indexWhere((e) => e.addedVariantId == newData.variant.id);
    OrderDetailsModel existingItem = _detailsData.ordersDetails![newItemIndex];
    OrderDetailsModel newItem = existingItem.copyWith(
      quantity: existingItem.quantity + 1,
    );
    _detailsData.ordersDetails![newItemIndex] = newItem;
  }

  void _addNewItem(
    OrderDetailsModel updatedItem,
    int index,
  ) {
    updatedItem.quantity = 1;
    updatedItem.product!.pickedQuantity = 0;
    updatedItem.product!.productPickedPercent = 0;
    updatedItem.product!.productStatus = ProductStatusEnum.added;
    if (index >= _detailsData.ordersDetails!.length - 1) {
      // if last item...just add at the end
      _detailsData.ordersDetails!.add(updatedItem);
    } else {
      _detailsData.ordersDetails!.insert(index + 1, updatedItem);
    }
  }

  void showDeleteDialog(BuildContext context, int productId) {
    showDialog(
      context: context,
      builder: (context) => RemoveProductDialog(
        controller: this,
        productId: productId,
      ),
    );
  }

  void editQuantity(BuildContext context, OrderDetailsModel product) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) {
        return UpdateReasonDialogWidget(
          controller: this,
          onPressSubmit: () {
            Navigator.pop(context);
            _reduceProductQnt(product);
          },
        );
      },
    );
  }

  void _reduceProductQnt(OrderDetailsModel product) {
    if (product.quantity > 1) {
      int index = _detailsData.ordersDetails!.indexWhere(
          (e) => e.id == product.id && product.addedVariantId == -1);

      /// using  (ProductStatusEnum.qntModified) and  (.isQntModified >> see PrepareOrderParams)
      /// to define that...this item qnt has been modified when sending in prepare order params
      /// and sending remain qnt
      product.quantity = product.quantity - 1;
      // if(product.product?.productStatus?.hasNoEdit == true || product.product?.productStatus?.isNormal == true){
      product.product!.productStatus = ProductStatusEnum.qntModified;
      _detailsData.ordersDetails![index] = product;
      product.pickerNotes = pickerNoteController.text;
      pickerNoteController.clear();
      detailsCubit.successState(_detailsData);
      getIt<OrdersHelper>().saveOrderDetails(_detailsData);
      updateSameOrderInList(_detailsData);
    }
  }

  void showCancelOrderDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return DialogActionWidget(
          description: Translate.of(context).are_you_sure_cancel_order,
          buttonGreenTitle: Translate.of(context).app_confirm,
          buttonRedTitle: Translate.of(context).no,
          greenOnTap: () => cancelOrder(context),
        );
      },
    );
  }

  void showDeleteItemDialog(BuildContext context, OrderDetailsModel item) {
    if (isProductFullPicked(item)) {
      return;
    }
    showDialog(
      context: context,
      builder: (context) {
        return DialogActionWidget(
          description: Translate.of(context).are_you_sure_delete_product,
          buttonGreenTitle: Translate.of(context).delete,
          greenOnTap: () => deleteReasonDialog(context, item.id),
        );
      },
    );
  }

  Future<void> cancelOrder(BuildContext context,
      {bool fromDelete = false}) async {
    getIt<LoadingHelper>().showLoadingDialog();
    var result = await getIt<HomeRepositories>().cancelOrder(orderId);
    result.when(
      isSuccess: (data) async {
        await removeOrder();
        getIt<LoadingHelper>().dismissDialog();
        AppSnackBar.showSuccessSnackBar(
            Translate.of(context).order_cancelled_successfully);
        if (!fromDelete) {
          Navigator.pop(context);
        }
        AutoRouter.of(context).maybePop(orderId);
      },
      isError: (error) {
        getIt<LoadingHelper>().dismissDialog();
        AppSnackBar.showErrorSnackBar(
            error: BaseError.unknown(
                msg: "Sorry we can't process this order. Thank you"));
      },
    );
  }

  Future<void> removeOrder() async {
    List<OrderModel> assignedOrders = getIt<OrdersHelper>().getAssignedOrders();
    List<OrderModel> updatedList = (assignedOrders).map((e) => e).toList();
    updatedList.removeWhere(
      (element) => element.id == orderId,
    );
    await getIt<OrdersHelper>().saveAssignedOrders(updatedList);
    await getIt<OrdersHelper>().deleteOrderDetails(orderId);

    // Check if both assigned orders and new orders are empty, then set ordersList to null
    OrdersList? currentOrdersList = getIt<OrdersHelper>().ordersListCubit.data;
    if (currentOrdersList != null) {
      if (updatedList.isEmpty && currentOrdersList.newOrders.isEmpty) {
        getIt<OrdersHelper>().ordersListCubit.successState(null);
      }
    }
  }

  void onPressPick(BuildContext context, OrderDetailsModel orderProduct,
      {bool pickAll = false}) {
    int qty = orderProduct.quantity;
    if (orderProduct.product!.pickedQuantity != qty) {
      pickItem(orderProduct, pickedAll: pickAll);
      // String variation = orderProduct.variation;
      // if (variation.validateIfItWeight() == true) {
      //   // showWeightDialog(context,orderProduct);
      //   showPriceDialog(context, orderProduct, pickAll: pickAll);
      // } else {
      //   pickItem(orderProduct, pickedAll: pickAll);
      // }
    }
  }

  void showWeightDialog(BuildContext context, OrderDetailsModel orderProduct) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return WeightConfirmDialogWidget(
          orderProduct: orderProduct,
          controller: this,
        );
      },
    );
  }

  void showPriceDialog(BuildContext context, OrderDetailsModel orderProduct,
      {bool pickAll = false}) {
    // OrderDetailsModel? productAfterUpdated = _detailsData.changedProducts?.firstWhereOrNull((element) => element.id == orderProduct.id);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return NewPriceDialogWidget(
          orderProduct: orderProduct,
          controller: this,
          pickAll: pickAll,
        );
      },
    );
  }

  void showNewWeightDialog(
      BuildContext context, OrderDetailsModel orderProduct) {
    showDialog(
        context: context,
        builder: (context) => DialogNewWeightWidget(
              orderProduct: orderProduct,
              controller: this,
            ));
  }

  void showNewPriceDialog(BuildContext context, OrderDetailsModel orderProduct,
      {bool popTwice = true, bool pickAll = false}) {
    showDialog(
        context: context,
        builder: (context) => EnterNewPriceDialogWidget(
              orderProduct: orderProduct,
              controller: this,
              popTwice: popTwice,
              pickAll: pickAll,
            ));
  }

  void confirmNewWeight(OrderDetailsModel orderProduct, BuildContext context) {
    if (formKey.currentState!.validate()) {
      double newPrice = double.parse(newPriceController.text);
      // double oldPrice = double.parse(orderProduct.unitPrice);

      double oldWeight = getProductWeight(orderProduct);
      double newWeight = double.parse(newWeightController.text);
      double minWeight = productMinimumNewWeight(orderProduct);
      String unit = getProductWeightUnit(orderProduct);

      // if(newPrice > oldPrice){
      //   AppSnackBar.showSimpleToast(msg: "${Translate.s.price_should_be_less_than_or_equal_to} $oldPrice",
      //       type: ToastType.error,
      //       gravity: ToastGravity.BOTTOM
      //   );
      //   return ;
      // }

      /// the new weight can not be more the old weight
      /// and can not be less than the Minimum one
      if (newWeight < minWeight || newWeight > oldWeight) {
        AppSnackBar.showSimpleToast(
          msg:
              "${Translate.s.new_weight_must_be_between} ${minWeight.toStringAsFixed(2)} ${Translate.s.and} $oldWeight $unit",
          type: ToastType.error,
          gravity: ToastGravity.BOTTOM,
        );
        return;
      }

      int index = _detailsData.ordersDetails!
          .indexWhere((e) => e.id == orderProduct.id);
      OrderDetailsModel updatedItem = orderProduct.copyWith(
        price: "$newPrice",
        newPrice: newPrice,
        variation: "$newWeight$unit",
        product: orderProduct.product!
            .copyWith(productStatus: ProductStatusEnum.priceModified),
      );
      _detailsData.ordersDetails![index] = updatedItem;
      updateDetailsCubit();
      getIt<OrdersHelper>().saveOrderDetails(_detailsData);
      newWeightController.clear();
      newPriceController.clear();
      pickItem(updatedItem);
      Navigator.pop(context);
      Navigator.pop(context);
    }
  }

  double productMinimumNewWeight(OrderDetailsModel orderProduct) {
    double oldWeight = getProductWeight(orderProduct);
    double newWeight = oldWeight - (oldWeight * 0.1);
    return newWeight;
  }

  double getProductWeight(
    OrderDetailsModel orderProduct,
  ) {
    return WeightInfo.extractWeight(orderProduct.variation)?.value ?? 0;
  }

  String getProductWeightUnit(
    OrderDetailsModel orderProduct,
  ) {
    return WeightInfo.extractWeight(orderProduct.variation)?.unit ?? "";
  }

  void confirmNewPrice(OrderDetailsModel oldItem, BuildContext context,
      {bool popTwice = true, bool pickAll = false}) {
    if (formKey.currentState!.validate()) {
      double newPrice = double.parse(newPriceController.text);
      if (oldItem.hasNoFixedPriceYet) {
        oldItem.fixedUnitPrice = double.parse(oldItem.unitPrice);
      }
      int index =
          _detailsData.ordersDetails!.indexWhere((e) => e.id == oldItem.id);
      OrderDetailsModel updatedItem = oldItem.copyWith(
        price: "${newPrice * oldItem.quantity}",
        unitPrice: "$newPrice",
        newPrice: newPrice,
        pickerNotes: pickerNoteController.text,
        product: oldItem.product!
            .copyWith(productStatus: ProductStatusEnum.priceModified),
      );
      _detailsData.ordersDetails![index] = updatedItem;

      /// to prevent adding the same item again with the same id
      _detailsData.changedProducts!
          .addIf(!_detailsData.changedProducts!.contains(oldItem.id), oldItem);
      pickItem(updatedItem, pickedAll: pickAll);
      pickerNoteController.clear();
      newPriceController.clear();
      Navigator.pop(context);
      if (popTwice) {
        Navigator.pop(context);
      }
      updateDetailsCubit();
      getIt<OrdersHelper>().saveOrderDetails(_detailsData);
    }
  }

  void pickItem(OrderDetailsModel orderProduct, {bool pickedAll = false}) {
    int qty = orderProduct.quantity;
    if (orderProduct.product!.pickedQuantity != qty) {
      getProductPickedPercent(orderProduct, pickedAll: pickedAll);
      updateDetailsCubit();
      getIt<OrdersHelper>().saveOrderDetails(_detailsData);
      updateSameOrderInList(_detailsData);
    }
  }

  void returnPickedItem(BuildContext context, OrderDetailsModel orderProduct) {
    int pickedQty = orderProduct.product!.pickedQuantity!;
    if (pickedQty > 0) {
      pickedQty = pickedQty - 1;
    }
    orderProduct.product!.pickedQuantity = pickedQty;
    double percent = (pickedQty / orderProduct.quantity) * 100;
    orderProduct.product!.productPickedPercent = percent;
    if (pickedQty == 0) {
      orderPickedPercent(_detailsData, isReturn: true);
      if (orderProduct.product!.productStatus!.shouldShowStatus &&
          !orderProduct.product!.productStatus!.isQntModified) {
        showConFirmReturnDialog(context, orderProduct);
        return;
      }
    }
    if (isAllPickedObs.getValue()) {
      isAllPickedObs.setValue(false);
    }
    updateDetailsCubit();
    getIt<OrdersHelper>().saveOrderDetails(_detailsData);
    updateSameOrderInList(_detailsData);
  }

  void deleteReasonDialog(BuildContext context, int id) {
    Navigator.pop(context);
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) {
        return UpdateReasonDialogWidget(
          controller: this,
          // onPressSubmit:() => deleteProduct(ctx,id),
          onPressSubmit: () => deleteProduct(ctx, id),
        );
      },
    );
  }

  void deleteProduct(BuildContext context, int itemId) {
    Navigator.pop(context);
    OrderDetailsModel? removedItem = _detailsData.ordersDetails?.firstWhere(
      (element) => element.id == itemId ,
    );
    removedItem?.pickerNotes = pickerNoteController.text;
    _detailsData.ordersDetails!.remove(removedItem);
    if ((_detailsData.ordersDetails ?? []).isNotEmpty) {
      orderPickedPercent(_detailsData);
      updateSameOrderInList(_detailsData);
    }
    _detailsData.deletedOrders?.add(removedItem!);
    updateDetailsCubit();
    getIt<OrdersHelper>().saveOrderDetails(_detailsData);
    if ((_detailsData.ordersDetails ?? []).isEmpty) {
      BuildContext ctx = getIt<GlobalContext>().context();
      cancelOrder(ctx, fromDelete: true);
    }
    pickerNoteController.clear();
  }

  void getProductPickedPercent(OrderDetailsModel orderProduct,
      {bool returnItem = false, bool pickedAll = false}) {
    int pickedQty = orderProduct.product!.pickedQuantity!;
    if (returnItem) {
      /// return button will be show only when pickedQty > 0
      pickedQty = pickedQty - 1;
    } else {
      if (pickedAll) {
        pickedQty = pickedQty + orderProduct.quantity;
      } else {
        pickedQty = pickedQty + 1;
      }
    }
    orderProduct.product!.pickedQuantity = pickedQty;
    double percent = (pickedQty / orderProduct.quantity) * 100;
    orderProduct.product!.productPickedPercent = percent;
    if (pickedQty == orderProduct.quantity) {
      orderPickedPercent(_detailsData, isReturn: returnItem);
    }
  }

  /// Recalculates the product percent based on current pickedQuantity and quantity
  /// Used when quantity changes (e.g., during replacement) without picking a new item
  /// This ensures the percent reflects the correct ratio after quantity modification
  void _recalculateProductPercent(OrderDetailsModel orderProduct) {
    int pickedQty = orderProduct.product!.pickedQuantity!;
    int qty = orderProduct.quantity;

    // If pickedQuantity exceeds the new quantity, cap it to the new quantity
    if (pickedQty > qty) {
      pickedQty = qty;
      orderProduct.product!.pickedQuantity = pickedQty;
    }

    double percent = qty > 0 ? (pickedQty / qty) * 100 : 0;
    orderProduct.product!.productPickedPercent = percent;

    if (pickedQty == qty && qty > 0) {
      orderPickedPercent(_detailsData);
    }
  }

  void returnDeleteProduct(BuildContext context, int itemId) {
    OrderDetailsModel? removedItem = _detailsData.deletedOrders?.firstWhere(
      (element) => element.id == itemId,
    );
    _detailsData.ordersDetails!.add(removedItem!);
    orderPickedPercent(_detailsData);
    updateSameOrderInList(_detailsData);
    _detailsData.deletedOrders?.remove(removedItem);
    updateDetailsCubit();
    getIt<OrdersHelper>().saveOrderDetails(_detailsData);
    if (_detailsData.deletedOrders?.isEmpty ?? false) {
      Navigator.pop(context);
    } else {
      refreshDeletedSheetObs.refresh();
    }
  }

  void orderPickedPercent(OrderModel details, {bool isReturn = false}) {
    int totalPickedQty = details.ordersDetails!
        .fold<int>(0, (sum, item) => sum + (item.product!.pickedQuantity ?? 0));
    int totalQty =
        details.ordersDetails!.fold<int>(0, (sum, item) => sum + item.quantity);
    final percent = (totalPickedQty / totalQty) * 100;
    details.pickedPercent = percent;
    if (isReturn) {
      if (details.totalItems < details.ordersDetails!.length) {
        details.totalItems = details.totalItems + 1;
      }
    } else {
      details.totalItems = details.totalItems - 1;
    }
    updateSameOrderInList(details);
  }

  void updateSameOrderInList(OrderModel details) {
    /// out side list updated inside this method
    BaseBloc<List<OrderModel>> ordersListCubit =
        getIt<OrdersHelper>().assignedOrdersCubit;
    List<OrderModel> ordersData = ordersListCubit.data!;
    for (var item in ordersData) {
      if (item.id == details.id) {
        item.totalItems = details.totalItems;
        item.pickedPercent = details.pickedPercent;
      }
    }
    getIt<OrdersHelper>().saveAssignedOrders(ordersData);
    ordersListCubit.successState(ordersData);
  }

  Future<void> getDetails({bool fromRemote = true}) async {
    String? hiveData = HiveHelper.instance
        .getDataFromBox<String>(HiveBoxesNames.orderDetails, key: orderId);
    if (hiveData != null && hiveData.isNotEmpty) {
      initDataFromLocal();
      return;
    }
    detailsCubit.loadingState();
    OrdersParams params = _orderParams(fromRemote);
    var result = await getIt<HomeRepositories>().showOrders(params);
    result.when(
      isSuccess: (data) {
        updateLocalData(data!);
        bagsCountObs.setValue(data.bagsCount);
      },
      isError: (error) {
        detailsCubit.failedState(error, () => getDetails());
      },
    );
  }

  Future<void> updateLocalData(OrderModel data) async {
    String? box = HiveHelper.instance
        .getDataFromBox<String>(HiveBoxesNames.orderDetails, key: orderId);
    if (box == null || box.isEmpty) {
      getIt<OrdersHelper>().saveOrderDetails(data);
      updateDetailsCubit(data: data);
    } else {
      initDataFromLocal();
    }
  }

  Future<void> initDataFromLocal() async {
    OrderModel? data = await getIt<OrdersHelper>().getOrderDetails(orderId);
    updateDetailsCubit(data: data);
    bagsCountObs.setValue(data?.bagsCount ?? 0);
    updateIsAllPickedObs();
  }

  /// return original order after replace it all (not reduce 1 qnt and add another one...not that my friend)
  void returnChangedProduct(OrderDetailsModel updatedOrder) {
    /// after update product => save the original product in (changedProducts list with the same id)
    /// prepareOrder need orderId even if replaced it send the original id with new variant id

    /// update the  product(the one with status replaced, or modified) with the original one from changedProducts list

    List<OrderDetailsModel> originalItems = _detailsData.changedProducts!;
    int index =
        _detailsData.ordersDetails!.indexWhere((e) => e.id == updatedOrder.id);
    OrderDetailsModel originalItem = originalItems.firstWhere(
      (element) => element.id == updatedOrder.id,
    );
    OrderDetailsModel updatedItem = updatedOrder.copyWith(
      /// same data that changed when updated first time will also be changed here
      price: originalItem.price,
      newPrice: null,
      unitPrice: originalItem.unitPrice,
      newVariantId: null,
      variation: originalItem.variation,
      product: originalItem.product!.copyWith(
          name: originalItem.product!.name,
          thumbnailImage: originalItem.product!.thumbnailImage,
          pickedQuantity: 0,
          productPickedPercent: 0,
          productStatus: ProductStatusEnum.noEdit,
          barcode: originalItem.product!.barcode),
    );
    _detailsData.ordersDetails![index] = updatedItem;
    _detailsData.changedProducts!.remove(originalItems);
    updateDetailsCubit();
    getIt<OrdersHelper>().saveOrderDetails(_detailsData);
  }

  /// return added order after add (now this is reverse of *reduce 1 qnt and add another one*...my friend)
  void returnAddedProduct(OrderDetailsModel updatedOrder) {
    /// note that updatedOrder and original item have the same id..(we will use benefit of this => in bring original one)

    /// prepareOrder need orderId even if it replaced 1 by 1  you can see => (prepare order params)

    /// update the  product(the one with status replaced, or modified) by increase its qnt
    /// remove it all and increase the original one qnt by 1
    /// or return it if deleted

    List<OrderDetailsModel> deletedItems = _detailsData.deletedOrders!;
    int addedItemIndex = _detailsData.ordersDetails!.indexWhere((e) =>
        e.id == updatedOrder.id &&
        updatedOrder.addedVariantId == e.addedVariantId);
    List<int> deletedItemsIds = deletedItems.map((e) => e.id).toList();
    OrderDetailsModel originalItem;

    if (deletedItemsIds.contains(updatedOrder.id)) {
      originalItem = deletedItems.firstWhere(
        (element) =>
            element.id == updatedOrder.id &&
            element.product!.productStatus!.isQntModified,
      );
      originalItem = originalItem.copyWith(
          quantity: originalItem.quantity + updatedOrder.quantity,
          product: originalItem.product!
              .copyWith(productStatus: ProductStatusEnum.noEdit));
      _detailsData.ordersDetails!
        ..removeAt(addedItemIndex)
        ..insert(addedItemIndex, originalItem);
      _detailsData.deletedOrders!
          .removeWhere((element) => element.id == originalItem.id);
    } else {
      originalItem = _detailsData.ordersDetails!.firstWhere(
        (element) =>
            element.id == updatedOrder.id &&
            element.product!.productStatus!.isQntModified,
      );
      int originalItemIndex = _detailsData.ordersDetails!.indexWhere((e) =>
          e.id == updatedOrder.id && e.product!.productStatus!.isQntModified);
      originalItem = originalItem.copyWith(
          quantity: originalItem.quantity + updatedOrder.quantity,
          product: originalItem.product!
              .copyWith(productStatus: ProductStatusEnum.noEdit));
      _detailsData.ordersDetails![originalItemIndex] = originalItem;
      _detailsData.ordersDetails!.removeAt(addedItemIndex);
    }
    updateDetailsCubit();
    getIt<OrdersHelper>().saveOrderDetails(_detailsData);
  }

  void showConFirmReturnDialog(
      BuildContext context, OrderDetailsModel replacedItem) {
    showDialog(
      context: context,
      builder: (context) {
        return DialogActionWidget(
          description: Translate.s.confirm_return_original_product,
          redOnTap: () {
            Navigator.pop(context);
            updateDetailsCubit();
            getIt<OrdersHelper>().saveOrderDetails(_detailsData);
            updateSameOrderInList(_detailsData);
          },
          greenOnTap: () {
            Navigator.pop(context);
            replacedItem.pickerNotes = "";
            replacedItem.fixedUnitPrice = null;
            if (isAllPickedObs.getValue()) {
              isAllPickedObs.setValue(false);
            }
            if (replacedItem.product!.isAdded) {
              returnAddedProduct(replacedItem);
            } else {
              returnChangedProduct(replacedItem);
            }
          },
        );
      },
    );
  }

  void showBagsCountDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return BagsNumberDialogWidget(controller: this);
      },
    );
  }

  void showDeletedProductsSheet(BuildContext context) {
    AppBottomSheets.showScrollableBody(
      context: context,
      builder: (context) {
        return DeletedProductsSheetWidget(controller: this);
      },
    );
  }

  void sendToCashier() {
    if (isAllProductsPicked) {
      isAllPickedObs.setValue(true);
    }
    for (var item in _detailsData.ordersDetails!) {
      item.product!.showEditPrice = true;
    }
    updateDetailsCubit();
    getIt<OrdersHelper>().saveOrderDetails(_detailsData);
  }

  OrdersParams _orderParams(bool refresh) {
    return OrdersParams(id: orderId, refresh: refresh);
  }

  ReplacedProductParams _replacedProductParams(String barcode) {
    return ReplacedProductParams(barcode: barcode);
  }

  bool isProductFullPicked(OrderDetailsModel item) => item.remainQnt == 0;

  bool get isAllProductsPicked {
    return _detailsData.ordersDetails!.every((item) => item.remainQnt == 0);
  }

  int get getPickedItemsCount => _detailsData.ordersDetails!
      .where((element) => element.remainQnt == 0)
      .length;

  Future<void> prepareOrder(BuildContext context) async {
    int bagCount = bagsCountObs.getValue();
    if (bagCount > 0) {
      Navigator.pop(context);
      getIt<LoadingHelper>().showLoadingDialog();
      final PrepareOrderParams params = _prepareOrderParams();
      final result = await getIt<HomeRepositories>().prepareOrder(params);
      BuildContext ctx = getIt<GlobalContext>().context();
      result.when(
        isSuccess: (data) async {
          List<OrderModel>? assigned =
              getIt<OrdersHelper>().assignedOrdersCubit.data;
          List<OrderModel> updatedList =
              (assigned ?? <OrderModel>[]).map((e) => e).toList();
          updatedList.removeWhere(
            (element) => element.id == orderId,
          );
          await getIt<OrdersHelper>().saveAssignedOrders(updatedList);
          await getIt<OrdersHelper>().getAllOrders();
          AutoRouter.of(ctx).maybePop();
          getIt<OrdersHelper>().deleteOrderDetails(data!.id);
          AppSnackBar.showSuccessSnackBar(
            Translate.of(ctx).order_ready_for_delivery,
          );
          getIt<LoadingHelper>().dismissDialog();
        },
        isError: (error) {
          AppSnackBar.showSimpleToast(
            // msg: Translate.of(ctx).something_went_wrong,
            msg: "Sorry we can't process this order. Thank you",
            type: ToastType.error,
          );
        },
      );
      getIt<LoadingHelper>().dismissDialog();
    }
  }

  void shoModifyBagsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return ModifyBagsCountDialogWidget(controller: this);
      },
    );
  }

  void changeUsedBagsCount(BuildContext context) {
    if (bagsCountFormKey.currentState!.validate()) {
      int newBagsCount = int.parse(newCountController.text);

      // Calculate old bag fees
      double oldBagFees = _detailsData.bagsCount * _detailsData.bagPrice;

      // Calculate current Grand Total
      double currentTotal = double.tryParse(_detailsData.total) ?? 0.0;

      // Calculate Base Total (Grand Total without bags)
      double baseTotal = currentTotal - oldBagFees;

      // Calculate New Bag Fees
      double newBagFees = newBagsCount * _detailsData.bagPrice;

      // Calculate New Grand Total
      double newTotal = baseTotal + newBagFees;

      // Update Data
      _detailsData.bagsCount = newBagsCount;
      _detailsData.envFees = newBagFees.toStringAsFixed(2);
      _detailsData.total = newTotal.toStringAsFixed(2);

      // Update State
      bagsCountObs.setValue(newBagsCount);
      updateDetailsCubit();
      getIt<OrdersHelper>().saveOrderDetails(_detailsData);

      Navigator.pop(context);
    }
  }

  void calcEnteredBagsPrice(String amount) {
    if (amount.isEmpty) {
      enteredBagsPriceObs.setValue(0.0);
    } else {
      int enteredBagsCount = double.parse(amount).toInt();
      double bagPrice = _detailsData.bagPrice;
      double price = enteredBagsCount * bagPrice;
      enteredBagsPriceObs.setValue(price);
    }
  }

  PrepareOrderParams _prepareOrderParams() {
    // log("======>>>> all data before enter params ${_detailsData.ordersDetails!} <<<<<<======");
    // log("======>>>> deleted data ${_detailsData.deletedOrders} <<<<<<======");
    // double bagCount = double.parse(newCountController.text);
    int bagCount = bagsCountObs.getValue();
    return PrepareOrderParams(
        orderId: orderId,
        currentProductsDetails: _detailsData.ordersDetails!,
        deletedDetails: _detailsData.deletedOrders,
        bagCount: bagCount
    );
  }
}
