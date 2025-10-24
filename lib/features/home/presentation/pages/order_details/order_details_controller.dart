import 'dart:developer';

import 'package:flutter_tdd/core/helpers/barcode_service.dart';
import 'package:flutter_tdd/core/helpers/hive_helper.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/domain/entity/orders_params.dart';
import 'package:flutter_tdd/features/home/domain/entity/replaced_product_params.dart';
import 'package:flutter_tdd/features/home/domain/repositories/home_repositories.dart';
import 'package:flutter_tdd/features/home/domain/requester/show_orders_requester.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/dialog_action_widget.dart';
import 'order_details_imports.dart';
import 'widget/remove_product_dialog.dart';
import 'widget/weight_confirm_dialog_widget.dart';

class OrderDetailsController {
  final ObsValue<bool> isPicked = ObsValue.withInit(false);
  final BaseBloc<OrderModel> detailsCubit = BaseBloc<OrderModel>();
  late ShowOrdersRequester showOrdersRequester;
  late final int orderId;
  late final int duration;

  OrderDetailsController(int id,int remainingTime) {
    orderId = id;
    duration = remainingTime;
    getDetails();
  }

   OrderModel get _detailsData => detailsCubit.data!;

  void updateDetailsCubit({OrderModel? data}) => detailsCubit.successState(data ?? _detailsData);

  void onPressReplace(BuildContext context,int productId){
    bool replacePermission = _detailsData.allowReplacement;
    if(replacePermission){
      showReplaceDialog(context);
    }else{
      showDeleteDialog(context,productId);
    }
  }


  void showReplaceDialog(BuildContext context) {
    showDialog(context: context, builder: (context) {
      return DialogActionWidget(
        description: 'Are you sure you want replace this product ?',
        buttonGreenTitle: 'Yes Replace',
        buttonRedTitle: 'Cancel',
        greenOnTap: () {},
      );
    });
  }



  void showDeleteDialog(BuildContext context,int productId) {
    showDialog(
      context: context,
      builder: (context) =>  RemoveProductDialog(controller: this,productId: productId,),
    );
  }


  void showWeightDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => const WeightConfirmDialogWidget(),
    );
  }

  void editQuantity(BuildContext context) {
    showDialog(context: context, builder: (context) => const WeightConfirmDialogWidget());
  }


  Future<void> cancelOrder(BuildContext context) async {
    var result = await getIt<HomeRepositories>().cancelOrder(OrdersParams(id: orderId));
    result.when(
      isSuccess: (data) {
        removeCanceledOrder();
        AppSnackBar.showSuccessSnackBar('Order cancelled successfully');
        AutoRouter.of(context).maybePop();
      },
      isError: (error) {
        AppSnackBar.showErrorSnackBar(error: BaseError.unknown(msg: 'Try Again'));
      },
    );
  }


  Future<void> removeCanceledOrder()async{
    var assignedOrders =  getIt<OrdersHelper>().getAssignedOrders();
    assignedOrders.removeWhere((order) => order.id == orderId);
    getIt<OrdersHelper>().assignedOrdersCubit.successState(assignedOrders);
    getIt<OrdersHelper>().saveAssignedOrders(assignedOrders);
  }



  void pickItem(OrderDetailsModel orderProduct) {
    var qty = orderProduct.quantity;
    if( orderProduct.product!.pickedQuantity!=qty){
      getProductPickedPercent(orderProduct,_detailsData);
      updateDetailsCubit();
      getIt<OrdersHelper>().saveOrderDetails(_detailsData);
    }
  }


  void deleteProduct(int productId){
    _detailsData.ordersDetails!.removeWhere((element) => element.id == productId);
    _detailsData.totalItems -=1 ;
    updateSameOrderInList(_detailsData);
    updateDetailsCubit();
    getIt<OrdersHelper>().saveOrderDetails(_detailsData);

  }


  void getProductPickedPercent(OrderDetailsModel orderProduct,OrderModel details){
     var pickedQty = orderProduct.product!.pickedQuantity!;
     pickedQty = pickedQty + 1 ;
     orderProduct.product!.pickedQuantity = pickedQty;
     var percent = (pickedQty/orderProduct.quantity)*100;
     orderProduct.product!.productPickedPercent = percent;
    if(pickedQty == orderProduct.quantity){
      orderPickedPercent(details);
    }
  }

  void orderPickedPercent(OrderModel details){
   var finishedPickedProducts = details.ordersDetails!.where((element) => element.quantity == element.product!.pickedQuantity!,).toList();
   var percent = (details.totalItems/finishedPickedProducts.length)*100;
    details.pickedPercent = percent;
    details.totalItems =  details.totalItems-1;
   updateSameOrderInList(details);
  }

  void updateSameOrderInList(OrderModel details) {
    /// out side list updated inside this method
    var ordersListCubit = getIt<OrdersHelper>().assignedOrdersCubit;
    var ordersData = ordersListCubit.data!;
    for(var item in ordersData){
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
        data?.preparationMinutes = duration;
        updateLocalData(data!);
      },
      isError: (error) {
        detailsCubit.failedState(error, () => getDetails());
      },);
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
  }




  Future<void> scanProduct(BuildContext context)async{
    String? barcode = await getIt<BarcodeService>().scanBarcode();
    if(barcode!=null && barcode.isNotEmpty){
      log("========>>>>>> code: $barcode<<<<<<<=======");
      getProductWithBarcode(context,"5285001226436");
      AppSnackBar.showSimpleToast(
        // "${tr('productScanned')} code: $barcode",
        msg: "Product Scanned",
        type: ToastType.success,
      );
    }
  }

  Future<void> getProductWithBarcode(BuildContext context,String barcode)async{
    var params = _replacedProductParams(barcode);
   var result =  await  getIt<HomeRepositories>().searchByBarcode(params);
    result.when(
      isSuccess: (data) {

    },
      isError: (error) {
        AppSnackBar.showSimpleToast(
          msg: "Product not found",
          type: ToastType.error,
        );
    },);
    }

  OrdersParams _orderParams(bool refresh) {
    return OrdersParams(id: orderId, refresh: refresh);
  }


  ReplacedProductParams _replacedProductParams(String barcode){
    return ReplacedProductParams(barcode: barcode);
  }

}
