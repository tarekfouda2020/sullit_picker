import 'package:flutter_tdd/core/helpers/barcode_service.dart';
import 'package:flutter_tdd/core/helpers/hive_helper.dart';
import 'package:flutter_tdd/core/helpers/loading_helper.dart';
import 'package:flutter_tdd/core/helpers/weight_info.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/forget_password/forget_password_imports.dart';
import 'package:flutter_tdd/features/home/data/enum/product_status_enum.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/data/model/search_barcode_model/search_barcode_model.dart';
import 'package:flutter_tdd/features/home/domain/entity/orders_params.dart';
import 'package:flutter_tdd/features/home/domain/entity/prepare_order_params.dart';
import 'package:flutter_tdd/features/home/domain/entity/replaced_product_params.dart';
import 'package:flutter_tdd/features/home/domain/repositories/home_repositories.dart';
import 'package:flutter_tdd/features/home/domain/requester/show_orders_requester.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/deleted_products_sheet_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/dialog_action_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/dialog_new_weight_widget.dart';

import 'order_details_imports.dart';
import 'widget/remove_product_dialog.dart';
import 'widget/weight_confirm_dialog_widget.dart';

class OrderDetailsController {
  final ObsValue<bool> isAllPickedObs = ObsValue.withInit(false);
  final ObsValue<bool> refreshDeletedSheetObs = ObsValue.withInit(false);
  final BaseBloc<OrderModel> detailsCubit = BaseBloc<OrderModel>();

  final TextEditingController newWeightController = TextEditingController();
  final TextEditingController newPriceController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late ShowOrdersRequester showOrdersRequester;
  late final int orderId;
  late final DateTime targetTime;
  late final int allItemsCount;

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

  void showReplaceDialog(BuildContext context, OrderDetailsModel oldItem) {
    showDialog(
        context: context,
        builder: (context) {
          return DialogActionWidget(
            description: Translate.of(context).are_you_sure_replace,
            buttonGreenTitle: Translate.of(context).yes_replace,
            buttonRedTitle: Translate.of(context).app_cancel,
            greenOnTap: () => scanProduct(context, oldItem),
          );
        });
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
          greenOnTap: () => deleteProduct(context, item.id),
        );
      },
    );
  }

  Future<void> cancelOrder(BuildContext context) async {
    var result = await getIt<HomeRepositories>().cancelOrder(OrdersParams(id: orderId));
    result.when(
      isSuccess: (data) {
        removeCanceledOrder();
        AppSnackBar.showSuccessSnackBar(Translate.of(context).order_cancelled_successfully);
        Navigator.pop(context);
        AutoRouter.of(context).maybePop(orderId);
      },
      isError: (error) {
        AppSnackBar.showErrorSnackBar(error: BaseError.unknown(msg: Translate.of(context).try_again));
      },
    );
  }

  Future<void> removeCanceledOrder() async {
    // var assignedOrders = getIt<OrdersHelper>().getAssignedOrders();
    // assignedOrders.removeWhere((order) => order.id == orderId);
    // getIt<OrdersHelper>().assignedOrdersCubit.successState(assignedOrders);
    // getIt<OrdersHelper>().saveAssignedOrders(assignedOrders);
    getIt<OrdersHelper>().deleteOrderDetails(orderId);
  }



  void onPressPick(BuildContext context,OrderDetailsModel orderProduct){
    var variant = orderProduct.variation;
    if(variant.validateIfItWeight() == true){
      showWeightDialog(context,orderProduct);
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


  void confirmNewWeight(OrderDetailsModel orderProduct, BuildContext context){
    if(formKey.currentState!.validate()){

      var newPrice = double.parse(newPriceController.text);
      var oldPrice = double.parse(orderProduct.price);

      var oldWeight  = getProductWeight(orderProduct);
      var newWeight = double.parse(newWeightController.text);
      var minWeight = productMinimumNewWeight(orderProduct);
      var unit = getProductWeightUnit(orderProduct);

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

      var index = _detailsData.ordersDetails!.indexWhere((e) => e.id == orderProduct.id);
      var updatedItem = orderProduct.copyWith(
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
    var oldWeight = getProductWeight(orderProduct);
    var newWeight = oldWeight-(oldWeight*0.1);
    return newWeight;
  }


  double getProductWeight(OrderDetailsModel orderProduct,){
    return WeightInfo.extractWeight(orderProduct.variation)?.value ??0;
  }


  String getProductWeightUnit(OrderDetailsModel orderProduct,){
    return WeightInfo.extractWeight(orderProduct.variation)?.unit ?? "";
  }


  void pickItem(OrderDetailsModel orderProduct) {
    var qty = orderProduct.quantity;
    if (orderProduct.product!.pickedQuantity != qty) {
      getProductPickedPercent(orderProduct, _detailsData);
      updateDetailsCubit();
      getIt<OrdersHelper>().saveOrderDetails(_detailsData);
      updateSameOrderInList(_detailsData);
    }
  }

  void returnPickedItem(OrderDetailsModel orderProduct){
    var pickedQty = orderProduct.product!.pickedQuantity!;
    pickedQty = pickedQty - 1;
    orderProduct.product!.pickedQuantity = pickedQty;
    var percent = (pickedQty / orderProduct.quantity) * 100;
    orderProduct.product!.productPickedPercent = percent;
    if(pickedQty == 0){
      orderPickedPercent(_detailsData,isReturn: true);
    }
    updateDetailsCubit();
    getIt<OrdersHelper>().saveOrderDetails(_detailsData);
    updateSameOrderInList(_detailsData);
  }

  void deleteProduct(BuildContext context, int itemId) {
    var removedItem = _detailsData.ordersDetails?.firstWhere(
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
    Navigator.pop(context);
    if((_detailsData.ordersDetails??[]).isEmpty){
      BuildContext ctx  = getIt<GlobalContext>().context();
      cancelOrder(ctx);
    }
  }




  void getProductPickedPercent(OrderDetailsModel orderProduct, OrderModel details, {bool returnItem = false}) {
    var pickedQty = orderProduct.product!.pickedQuantity!;
    if(returnItem){
      /// return button will be show only when pickedQty > 0
      pickedQty = pickedQty - 1;
    }else{
      pickedQty = pickedQty + 1;
    }
    orderProduct.product!.pickedQuantity = pickedQty;
    var percent = (pickedQty / orderProduct.quantity) * 100;
    orderProduct.product!.productPickedPercent = percent;
    if (pickedQty == orderProduct.quantity) {
      orderPickedPercent(details,isReturn: returnItem);
    }
  }

  void returnDeleteProduct(BuildContext context, int itemId) {
    var removedItem = _detailsData.deletedOrders?.firstWhere(
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
    var totalPickedQty = details.ordersDetails!.fold<int>(0, (sum, item) => sum + (item.product!.pickedQuantity ?? 0));
    var totalQty = details.ordersDetails!.fold<int>(0, (sum, item) => sum + item.quantity);
    final percent = (totalPickedQty / totalQty) * 100;
    details.pickedPercent = percent;
    if(isReturn){
      details.totalItems = details.totalItems + 1;
    }else{
      details.totalItems = details.totalItems - 1;
    }
    updateSameOrderInList(details);
  }

  void updateSameOrderInList(OrderModel details) {
    /// out side list updated inside this method
    var ordersListCubit = getIt<OrdersHelper>().assignedOrdersCubit;
    var ordersData = ordersListCubit.data!;
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
    var hiveData = HiveHelper.instance.getDataFromBox<String>(HiveBoxesNames.orderDetails, key: orderId);
    if (hiveData != null && hiveData.isNotEmpty) {
      initDataFromLocal();
      return;
    }
    detailsCubit.loadingState();
    var params = _orderParams(fromRemote);
    var result = await getIt<HomeRepositories>().showOrders(params);
    result.when(
      isSuccess: (data) {
        updateLocalData(data!);
        allItemsCount = data.totalItems;
      },
      isError: (error) {
        detailsCubit.failedState(error, () => getDetails());
      },
    );
  }

  Future<void> updateLocalData(OrderModel data) async {
    var box = HiveHelper.instance.getDataFromBox<String>(HiveBoxesNames.orderDetails, key: orderId);
    if (box == null || box.isEmpty) {
      getIt<OrdersHelper>().saveOrderDetails(data);
      updateDetailsCubit(data: data);
    } else {
      initDataFromLocal();
    }
  }

  Future<void> initDataFromLocal() async {
    var data = await getIt<OrdersHelper>().getOrderDetails(orderId);
    updateDetailsCubit(data: data);
    updateIsAllPickedObs();
  }

  Future<void> scanProduct(BuildContext context, OrderDetailsModel oldItem) async {
    Navigator.pop(context);
    String? barcode = await getIt<BarcodeService>().scanBarcode();
    if (barcode != null && barcode.isNotEmpty) {
      BuildContext ctx = getIt<GlobalContext>().context();
      AppSnackBar.showSuccessSnackBar(
        Translate.of(ctx).product_scanned,
      );
      getProductWithBarcode(ctx, barcode, oldItem);
    }
  }

  Future<void> getProductWithBarcode(BuildContext context, String barcode, OrderDetailsModel oldItem) async {
    getIt<LoadingHelper>().showLoadingDialog();
    var params = _replacedProductParams(barcode);
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
    var newPrice = double.parse(newData.variant.mainPrice);
    var oldItemPrice = double.parse(oldItem.price);

    if (newPrice > oldItemPrice) {
      AppSnackBar.showSimpleToast(
          msg: Translate.s.cannot_replace_higher_price(oldItemPrice.toString()),
          type: ToastType.error,
          gravity: ToastGravity.BOTTOM
      );
      return;
    }

    var index = _detailsData.ordersDetails!.indexWhere((e) => e.id == oldItem.id);
    var updatedItem = oldItem.copyWith(
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
    updateDetailsCubit();
    getIt<OrdersHelper>().saveOrderDetails(_detailsData);
  }

  OrdersParams _orderParams(bool refresh) {
    return OrdersParams(id: orderId, refresh: refresh);
  }

  ReplacedProductParams _replacedProductParams(String barcode) {
    return ReplacedProductParams(barcode: barcode);
  }

  void showDeletedProductsSheet(BuildContext context) {
    AppBottomSheets.showScrollableBody(
      context: context,
      builder: (context) {
        return DeletedProductsSheetWidget(controller: this);
      },
    );
  }

  bool isProductFullPicked(OrderDetailsModel item) => item.quantity - item.product!.pickedQuantity! == 0;

  bool get isAllProductsPicked {
    return _detailsData.ordersDetails!.every((item) => item.quantity - item.product!.pickedQuantity! == 0);
  }

  Future<void> prepareOrder(BuildContext context) async {
    final params = _prepareOrderParams();
    final result = await getIt<HomeRepositories>().prepareOrder(params);
    result.when(
      isSuccess: (data) {
        AutoRouter.of(context).maybePop(params.orderId);
        AppSnackBar.showSuccessSnackBar(
         Translate.of(context).order_ready_for_delivery,
        );
        getIt<OrdersHelper>().deleteOrderDetails(data!.id);
      },
      isError: (error) {
        AppSnackBar.showSimpleToast(
          msg: Translate.of(context).something_went_wrong,
          type: ToastType.error,
        );
      },
    );
  }

  PrepareOrderParams _prepareOrderParams() {
    return PrepareOrderParams(
      orderId: orderId,
      currentProductsDetails: _detailsData.ordersDetails!,
      deletedDetails: _detailsData.deletedOrders,
    );
  }
}
