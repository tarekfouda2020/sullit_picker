import 'dart:developer';

import 'package:flutter_tdd/core/helpers/barcode_service.dart';
import 'package:flutter_tdd/core/helpers/hive_helper.dart';
import 'package:flutter_tdd/core/helpers/loading_helper.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/data/model/search_barcode_model/search_barcode_model.dart';
import 'package:flutter_tdd/features/home/domain/entity/orders_params.dart';
import 'package:flutter_tdd/features/home/domain/entity/prepare_order_params.dart';
import 'package:flutter_tdd/features/home/domain/entity/replaced_product_params.dart';
import 'package:flutter_tdd/features/home/domain/repositories/home_repositories.dart';
import 'package:flutter_tdd/features/home/domain/requester/show_orders_requester.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/deleted_products_sheet_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/dialog_action_widget.dart';

import 'order_details_imports.dart';
import 'widget/remove_product_dialog.dart';
import 'widget/weight_confirm_dialog_widget.dart';

class OrderDetailsController {
  final ObsValue<bool> isAllPickedObs = ObsValue.withInit(false);
  final ObsValue<bool> refreshDeletedSheetObs = ObsValue.withInit(false);
  final BaseBloc<OrderModel> detailsCubit = BaseBloc<OrderModel>();
  late ShowOrdersRequester showOrdersRequester;
  late final int orderId;
  late final int duration;

  OrderDetailsController(int id, int remainingTime) {
    orderId = id;
    duration = remainingTime;
    getDetails();
  }

  OrderModel get _detailsData => detailsCubit.data!;

  void updateDetailsCubit({OrderModel? data}) => detailsCubit.successState(data ?? _detailsData);

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
            description: 'Are you sure you want replace this product ?',
            buttonGreenTitle: 'Yes Replace',
            buttonRedTitle: 'Cancel',
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

  void showWeightDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => const WeightConfirmDialogWidget(),
    );
  }

  void editQuantity(BuildContext context) {
    showDialog(context: context, builder: (context) => const WeightConfirmDialogWidget());
  }

  void showCancelOrderDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return DialogActionWidget(
          description: 'Are you sure you want to cancel order',
          buttonGreenTitle: 'Confirm',
          buttonRedTitle: "No",
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
          description: 'Are you sure you want to delete product',
          buttonGreenTitle: 'Delete',
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
        AppSnackBar.showSuccessSnackBar('Order cancelled successfully');
        Navigator.pop(context);
        AutoRouter.of(context).maybePop();
      },
      isError: (error) {
        AppSnackBar.showErrorSnackBar(error: BaseError.unknown(msg: 'Try Again'));
      },
    );
  }

  Future<void> removeCanceledOrder() async {
    var assignedOrders = getIt<OrdersHelper>().getAssignedOrders();
    assignedOrders.removeWhere((order) => order.id == orderId);
    getIt<OrdersHelper>().assignedOrdersCubit.successState(assignedOrders);
    getIt<OrdersHelper>().saveAssignedOrders(assignedOrders);
  }

  void pickItem(OrderDetailsModel orderProduct) {
    var qty = orderProduct.quantity;
    if (orderProduct.product!.pickedQuantity != qty) {
      getProductPickedPercent(orderProduct, _detailsData);
      updateDetailsCubit();
      getIt<OrdersHelper>().saveOrderDetails(_detailsData);
    }
  }

  void deleteProduct(BuildContext context, int itemId) {
    var removedItem = _detailsData.ordersDetails?.firstWhere(
      (element) => element.id == itemId,
    );
    _detailsData.ordersDetails!.remove(removedItem);
    orderPickedPercent(_detailsData);
    updateSameOrderInList(_detailsData);
    _detailsData.deletedOrders?.add(removedItem!);
    updateDetailsCubit();
    getIt<OrdersHelper>().saveOrderDetails(_detailsData);
    Navigator.pop(context);
  }

  void getProductPickedPercent(OrderDetailsModel orderProduct, OrderModel details) {
    var pickedQty = orderProduct.product!.pickedQuantity!;
    pickedQty = pickedQty + 1;
    orderProduct.product!.pickedQuantity = pickedQty;
    var percent = (pickedQty / orderProduct.quantity) * 100;
    orderProduct.product!.productPickedPercent = percent;
    if (pickedQty == orderProduct.quantity) {
      orderPickedPercent(details);
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

  void orderPickedPercent(OrderModel details) {
    var totalPickedQty = details.ordersDetails!.fold<int>(0, (sum, item) => sum + (item.product!.pickedQuantity ?? 0));
    var totalQty = details.ordersDetails!.fold<int>(0, (sum, item) => sum + item.quantity);
    final percent = (totalPickedQty / totalQty) * 100;
    details.pickedPercent = percent;
    details.totalItems = details.totalItems - 1;
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
        data?.preparationMinutes = duration;
        updateLocalData(data!);
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
  }

  Future<void> scanProduct(BuildContext context, OrderDetailsModel oldItem) async {
    Navigator.pop(context);
    String? barcode = await getIt<BarcodeService>().scanBarcode();
    if (barcode != null && barcode.isNotEmpty) {
      AppSnackBar.showSuccessSnackBar(
        "Product Scanned",
      );
      BuildContext ctx = getIt<GlobalContext>().context();
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
          msg: "Product not found",
          type: ToastType.error,
        );
      },
    );
    getIt<LoadingHelper>().dismissDialog();
    Navigator.pop(context);
  }

  void updateReplacedProduct(SearchBarcodeModel newData, OrderDetailsModel oldItem) {
    var newPrice = double.parse(newData.variant.mainPrice);
    var oldItemPrice = double.parse(oldItem.price);

    if (newPrice > oldItemPrice) {
      AppSnackBar.showSimpleToast(
          msg: "Cannot replace with product having higher price than $oldItemPrice",
          type: ToastType.error,
          gravity: ToastGravity.BOTTOM);
      return;
    }

    var index = _detailsData.ordersDetails!.indexWhere((e) => e.id == oldItem.id);
    var updatedItem = oldItem.copyWith(
      price: newData.variant.mainPrice,
      newVariantId: newData.variant.id,
      product: oldItem.product!.copyWith(
        name: newData.name,
        thumbnailImage: newData.thumbnailImage,
        pickedQuantity: 0,
        productPickedPercent: 0,
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
    log(">>>>${params.toJson()}");
    final result = await getIt<HomeRepositories>().prepareOrder(params);
    result.when(
      isSuccess: (data) {
        AutoRouter.of(context).maybePop(params.orderId);
        AppSnackBar.showSuccessSnackBar(
         "Order ready for delivery",
        );
      },
      isError: (error) {
        AppSnackBar.showSimpleToast(
          msg: "Something went wrong",
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
