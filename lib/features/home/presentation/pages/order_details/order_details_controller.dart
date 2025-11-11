import 'dart:developer';

import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/update_reason_dialog_widget.dart';

import 'order_details_imports.dart';

class OrderDetailsController {
  final ObsValue<bool> isAllPickedObs = ObsValue.withInit(false);
  final ObsValue<bool> refreshDeletedSheetObs = ObsValue.withInit(false);
  final BaseBloc<OrderModel> detailsCubit = BaseBloc<OrderModel>();

  final TextEditingController newWeightController = TextEditingController();
  final TextEditingController newPriceController = TextEditingController();
  final TextEditingController pickerNoteController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final GlobalKey<FormState> replaceReasonKey = GlobalKey<FormState>();

  late ShowOrdersRequester showOrdersRequester;
  late final int orderId;
  late final DateTime targetTime;

  OrderDetailsController(int id, DateTime time) {
    orderId = id;
    targetTime = time;
    getDetails();
  }

  OrderModel get _detailsData => detailsCubit.data!;

  void updateDetailsCubit({OrderModel? data}) => detailsCubit.successState(data ?? _detailsData);

  void updateIsAllPickedObs(){
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

  void showReturnReasonDialog(BuildContext context,OrderDetailsModel currentItem){
    Navigator.pop(context);
    showDialog(context: context, builder: (ctx) {
      return UpdateReasonDialogWidget(
        controller: this,
        onPressSubmit:() => confirmReplaceReason(ctx,currentItem),
      ) ;
    },);
  }

  void confirmReplaceReason(BuildContext context,OrderDetailsModel currentItem){
   if(replaceReasonKey.currentState!.validate()){
     currentItem.pickerNotes = pickerNoteController.text;
     pickerNoteController.clear();
     scanProduct(context, currentItem);
   }
  }

  Future<void> scanProduct(BuildContext context, OrderDetailsModel oldItem) async {
    Navigator.pop(context);
    String? barcode = await getIt<BarcodeService>().scanBarcode();
    if (barcode != null && barcode.isNotEmpty) {
      BuildContext ctx = getIt<GlobalContext>().context();
      AppSnackBar.showSuccessSnackBar(
        Translate.of(ctx).product_scanned,
      );
      getProductWithBarcode(ctx, "31630", oldItem);
    }
  }

  Future<void> getProductWithBarcode(BuildContext context, String barcode, OrderDetailsModel oldItem) async {
    getIt<LoadingHelper>().showLoadingDialog();
    ReplacedProductParams params = _replacedProductParams(barcode);
    var result = await getIt<HomeRepositories>().searchByBarcode(params);
    result.when(
      isSuccess: (data) {
        updateReplacedProduct(data!, oldItem);
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

  void updateReplacedProduct(SearchBarcodeModel newData, OrderDetailsModel oldItem) {
    double newPrice = double.parse(newData.variant.mainPrice);
    double oldItemPrice = double.parse(oldItem.getProductPrice);
    if (newPrice > oldItemPrice) {
      AppSnackBar.showSimpleToast(
          msg: Translate.s.cannot_replace_higher_price(oldItemPrice.toString()),
          type: ToastType.error,
          gravity: ToastGravity.BOTTOM
      );
      return;
    }

    int index = _detailsData.ordersDetails!.indexWhere((e) => e.id == oldItem.id);
    OrderDetailsModel updatedItem = oldItem.copyWith(
      price: newData.variant.mainPrice,
      newVariantId: newData.variant.id,
      variation: "",
      product: oldItem.product!.copyWith(
          name: newData.name,
          thumbnailImage: newData.thumbnailImage,
          pickedQuantity: 0,
          productPickedPercent: 0,
          productStatus: ProductStatusEnum.replaced,
          barcode: newData.barcode
      ),
    );
    _detailsData.ordersDetails![index] = updatedItem;
    /// add replaced products in a separated list
    _detailsData.changedProducts!.add(oldItem);
    updateDetailsCubit();
    getIt<OrdersHelper>().saveOrderDetails(_detailsData);
    updateSameOrderInList(_detailsData);
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



  void editQuantity(BuildContext context) {
    // showDialog(context: context, builder: (context) => const WeightConfirmDialogWidget());
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

  Future<void> cancelOrder(BuildContext context) async {
    var result = await getIt<HomeRepositories>().cancelOrder( orderId);
    result.when(
      isSuccess: (data) async{
        await removeOrder();
        AppSnackBar.showSuccessSnackBar(Translate.of(context).order_cancelled_successfully);
        Navigator.pop(context);
        AutoRouter.of(context).maybePop(orderId);
      },
      isError: (error) {
        AppSnackBar.showErrorSnackBar(error: BaseError.unknown(msg: Translate.of(context).try_again));
      },
    );
  }

  Future<void> removeOrder() async {
    List<OrderModel> assignedOrders = getIt<OrdersHelper>().getAssignedOrders();
    assignedOrders.removeWhere((order) => order.id == orderId);
    await getIt<OrdersHelper>().saveAssignedOrders(assignedOrders);
    await getIt<OrdersHelper>().deleteOrderDetails(orderId);
  }



  void onPressPick(BuildContext context,OrderDetailsModel orderProduct){
    String variation = orderProduct.variation;
    if(variation.validateIfItWeight() == true){
      // showWeightDialog(context,orderProduct);
      showPriceDialog(context,orderProduct);
    }else{
      pickItem(orderProduct);
    }
  }


  void showWeightDialog(BuildContext context,OrderDetailsModel orderProduct) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return  WeightConfirmDialogWidget(orderProduct: orderProduct,controller: this,);
      },
    );
  }

  void showPriceDialog(BuildContext context,OrderDetailsModel orderProduct) {
    // OrderDetailsModel? productAfterUpdated = _detailsData.changedProducts?.firstWhereOrNull((element) => element.id == orderProduct.id);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return  NewPriceDialogWidget(orderProduct:  orderProduct,controller: this,);
      },
    );
  }

  void showNewWeightDialog(BuildContext context,OrderDetailsModel orderProduct) {
    showDialog(
        context: context,
        builder: (context) =>
         DialogNewWeightWidget(
         orderProduct: orderProduct,
           controller: this,
        )
    );
  }

  void showNewPriceDialog(BuildContext context,OrderDetailsModel orderProduct,{bool popTwice = true}) {
    showDialog(
        context: context,
        builder: (context) =>
            EnterNewPriceDialogWidget(
              orderProduct:  orderProduct,
              controller: this,
              popTwice: popTwice,
            )
    );
  }


  void confirmNewWeight(OrderDetailsModel orderProduct, BuildContext context){
    if(formKey.currentState!.validate()){

      double newPrice = double.parse(newPriceController.text);
      double oldPrice = double.parse(orderProduct.getProductPrice);

      double oldWeight  = getProductWeight(orderProduct);
      double newWeight = double.parse(newWeightController.text);
      double minWeight = productMinimumNewWeight(orderProduct);
      String unit = getProductWeightUnit(orderProduct);

      if(newPrice > oldPrice){
        AppSnackBar.showSimpleToast(msg: "${Translate.s.price_should_be_less_than_or_equal_to} $oldPrice",
            type: ToastType.error,
            gravity: ToastGravity.BOTTOM
        );
        return ;
      }

      /// the new weight can not be more the old weight
      /// and can not be less than the Minimum one
      if (newWeight < minWeight || newWeight > oldWeight) {
        AppSnackBar.showSimpleToast(
          msg: "${Translate.s.new_weight_must_be_between} ${minWeight.toStringAsFixed(2)} ${Translate.s.and} $oldWeight $unit",
          type: ToastType.error,
          gravity: ToastGravity.BOTTOM,
        );
        return;
      }

      int index = _detailsData.ordersDetails!.indexWhere((e) => e.id == orderProduct.id);
      OrderDetailsModel updatedItem = orderProduct.copyWith(
        price: "$newPrice",
        newPrice: newPrice,
        variation: "$newWeight$unit",
        product: orderProduct.product!.copyWith(
            productStatus: ProductStatusEnum.modified
        ),
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

  double productMinimumNewWeight(OrderDetailsModel orderProduct){
    double oldWeight = getProductWeight(orderProduct);
    double newWeight = oldWeight-(oldWeight*0.1);
    return newWeight;
  }


  double getProductWeight(OrderDetailsModel orderProduct,){
    return WeightInfo.extractWeight(orderProduct.variation)?.value ??0;
  }


  String getProductWeightUnit(OrderDetailsModel orderProduct,){
    return WeightInfo.extractWeight(orderProduct.variation)?.unit ?? "";
  }



  void confirmNewPrice(OrderDetailsModel oldItem, BuildContext context,{bool popTwice = true}){
    if(formKey.currentState!.validate()){
      double newPrice = double.parse(newPriceController.text);
      double oldPrice = double.parse(oldItem.getProductPrice);
      if(newPrice > oldPrice){
        AppSnackBar.showSimpleToast(msg: "${Translate.s.price_should_be_less_than_or_equal_to} $oldPrice",
            type: ToastType.error,
            gravity: ToastGravity.BOTTOM
        );
        return ;
      }

      int index = _detailsData.ordersDetails!.indexWhere((e) => e.id == oldItem.id);
      OrderDetailsModel updatedItem = oldItem.copyWith(
        price: "${newPrice*oldItem.quantity}",
        newPrice: newPrice,
       pickerNotes: pickerNoteController.text,
        product: oldItem.product!.copyWith(
            productStatus: ProductStatusEnum.modified
        ),
      );
      _detailsData.ordersDetails![index] = updatedItem;
      _detailsData.changedProducts!.addIf(!_detailsData.changedProducts!.contains(updatedItem.id),updatedItem);
      pickItem(updatedItem);
      pickerNoteController.clear();
      newPriceController.clear();
      Navigator.pop(context);
      if(popTwice){
        Navigator.pop(context);
      }
      if(isAllProductsPicked){
        updateDetailsCubit();
        getIt<OrdersHelper>().saveOrderDetails(_detailsData);
      }
    }
  }


  void pickItem(OrderDetailsModel orderProduct) {
    int qty = orderProduct.quantity;
    if (orderProduct.product!.pickedQuantity != qty) {
      getProductPickedPercent(orderProduct, _detailsData);
      updateDetailsCubit();
      getIt<OrdersHelper>().saveOrderDetails(_detailsData);
      updateSameOrderInList(_detailsData);
    }
  }

  void returnPickedItem(BuildContext context,OrderDetailsModel orderProduct){
    int pickedQty = orderProduct.product!.pickedQuantity!;
    if(pickedQty>0){
      pickedQty = pickedQty - 1;
    }
    orderProduct.product!.pickedQuantity = pickedQty;
    double percent = (pickedQty / orderProduct.quantity) * 100;
    orderProduct.product!.productPickedPercent = percent;
    if(pickedQty == 0){
      orderPickedPercent(_detailsData,isReturn: true);
      if(orderProduct.product!.replaced || orderProduct.product!.modified){
        showConFirmReturnDialog(context,orderProduct);
        return ;
      }
    }
    if(isAllPickedObs.getValue()){
      isAllPickedObs.setValue(false);
    }
    updateDetailsCubit();
    getIt<OrdersHelper>().saveOrderDetails(_detailsData);
    updateSameOrderInList(_detailsData);
  }



  void deleteReasonDialog(BuildContext context,int id){
    Navigator.pop(context);
    showDialog(context: context, builder: (ctx) {
      return UpdateReasonDialogWidget(
        controller: this,
        // onPressSubmit:() => deleteProduct(ctx,id),
        onPressSubmit:() => deleteProduct(ctx,id),
      ) ;
    },);
  }


  void deleteProduct(BuildContext context, int itemId) {
    Navigator.pop(context);
    OrderDetailsModel? removedItem = _detailsData.ordersDetails?.firstWhere(
      (element) => element.id == itemId,
    );
    _detailsData.ordersDetails!.remove(removedItem);
    if((_detailsData.ordersDetails??[]).isNotEmpty){
      orderPickedPercent(_detailsData);
      updateSameOrderInList(_detailsData);
    }
    _detailsData.deletedOrders?.add(removedItem!);
    updateDetailsCubit();
    getIt<OrdersHelper>().saveOrderDetails(_detailsData);
    if((_detailsData.ordersDetails??[]).isEmpty){
      BuildContext ctx  = getIt<GlobalContext>().context();
      cancelOrder(ctx);
    }
  }

  void getProductPickedPercent(OrderDetailsModel orderProduct, OrderModel details, {bool returnItem = false}) {
    int pickedQty = orderProduct.product!.pickedQuantity!;
    if(returnItem){
      /// return button will be show only when pickedQty > 0
      pickedQty = pickedQty - 1;
    }else{
      pickedQty = pickedQty + 1;
    }
    orderProduct.product!.pickedQuantity = pickedQty;
    double percent = (pickedQty / orderProduct.quantity) * 100;
    orderProduct.product!.productPickedPercent = percent;
    if (pickedQty == orderProduct.quantity) {
      orderPickedPercent(details,isReturn: returnItem);
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

  void orderPickedPercent(OrderModel details,{bool isReturn = false}) {
    int totalPickedQty = details.ordersDetails!.fold<int>(0, (sum, item) => sum + (item.product!.pickedQuantity ?? 0));
    int totalQty = details.ordersDetails!.fold<int>(0, (sum, item) => sum + item.quantity);
    final percent = (totalPickedQty / totalQty) * 100;
    details.pickedPercent = percent;
    if(isReturn){
      if(details.totalItems < details.ordersDetails!.length ){
        details.totalItems = details.totalItems + 1;
      }
    }else{
      details.totalItems = details.totalItems - 1;
    }
    updateSameOrderInList(details);
  }

  void updateSameOrderInList(OrderModel details) {
    /// out side list updated inside this method
    BaseBloc<List<OrderModel>> ordersListCubit = getIt<OrdersHelper>().assignedOrdersCubit;
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
    String? hiveData = HiveHelper.instance.getDataFromBox<String>(HiveBoxesNames.orderDetails, key: orderId);
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
      },
      isError: (error) {
        detailsCubit.failedState(error, () => getDetails());
      },
    );
  }


  Future<void> updateLocalData(OrderModel data) async {
    String? box = HiveHelper.instance.getDataFromBox<String>(HiveBoxesNames.orderDetails, key: orderId);
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
    updateIsAllPickedObs();
  }


  /// return original order after replace it
  void returnChangedProduct(OrderDetailsModel updatedOrder ){
    /// after replace product => save the original product in (changedProducts list with the same id)
    /// prepareOrder need orderId even if replaced it send the original id with new variant id

    /// update the replaced product(the one with status replaced) with the original one from replaced list


    List<OrderDetailsModel> originalItems = _detailsData.changedProducts!;
    int index = _detailsData.ordersDetails!.indexWhere((e) => e.id == updatedOrder.id);
    OrderDetailsModel originalItem = originalItems.firstWhere((element) => element.id == updatedOrder.id,);
    OrderDetailsModel updatedItem = updatedOrder.copyWith(
      /// same data that changed when replace first time will also be changed here
      price: originalItem.price,
      newVariantId: null,
      variation: originalItem.variation,
      product: originalItem.product!.copyWith(
      name: originalItem.product!.name,
      thumbnailImage: originalItem.product!.thumbnailImage,
      pickedQuantity: 0,
      productPickedPercent: 0,
      productStatus: ProductStatusEnum.noEdit,
      barcode: originalItem.product!.barcode
      ),
    );
    _detailsData.ordersDetails![index] = updatedItem;
    _detailsData.changedProducts!.remove(originalItems);
    updateDetailsCubit();
    getIt<OrdersHelper>().saveOrderDetails(_detailsData);
  }

  void showConFirmReturnDialog(BuildContext context,OrderDetailsModel replacedItem ){
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
          if(isAllPickedObs.getValue()){
            isAllPickedObs.setValue(false);
          }
          returnChangedProduct(replacedItem);
        },
      );
    },);
  }

  void showDeletedProductsSheet(BuildContext context) {
    AppBottomSheets.showScrollableBody(
      context: context,
      builder: (context) {
        return DeletedProductsSheetWidget(controller: this);
      },
    );
  }


  void sendToCashier(){
    if(isAllProductsPicked){
      isAllPickedObs.setValue(true);
    }
    for(var item in _detailsData.ordersDetails!){
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

  Future<void> prepareOrder(BuildContext context) async {
    getIt<LoadingHelper>().showLoadingDialog();
    final params = _prepareOrderParams();
    final result = await getIt<HomeRepositories>().prepareOrder(params);
    result.when(
      isSuccess: (data) async{
        List<OrderModel>? assigned = getIt<OrdersHelper>().assignedOrdersCubit.data;
        List<OrderModel> updatedList = (assigned ?? <OrderModel>[]).map((e) => e).toList();
        updatedList.removeWhere((element) => element.id == orderId,);
        await getIt<OrdersHelper>().saveAssignedOrders(updatedList);
        await getIt<OrdersHelper>().getAllOrders();
        AutoRouter.of(context).maybePop(params.orderId);
        getIt<OrdersHelper>().deleteOrderDetails(data!.id);
        AppSnackBar.showSuccessSnackBar(
          Translate.of(context).order_ready_for_delivery,
        );
        getIt<LoadingHelper>().dismissDialog();
      },
      isError: (error) {
        AppSnackBar.showSimpleToast(
          msg: Translate.of(context).something_went_wrong,
          type: ToastType.error,
        );
      },
    );
    getIt<LoadingHelper>().dismissDialog();
  }

  PrepareOrderParams _prepareOrderParams() {
    return PrepareOrderParams(
      orderId: orderId,
      currentProductsDetails: _detailsData.ordersDetails!,
      deletedDetails: _detailsData.deletedOrders,
    );
  }


}
