
import 'package:flutter_tdd/core/helpers/date_time_helper.dart';
import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/core/helpers/phone_helper.dart';
import 'package:flutter_tdd/features/home/data/enum/order_status_enum.dart';
import 'package:flutter_tdd/features/home/data/enum/product_status_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_model.freezed.dart';

part 'orders_model.g.dart';

@freezed
class OrdersList with _$OrdersList {
  const factory OrdersList({
    @JsonKey(name: 'assigned_orders') required List<OrderModel> assignedOrders,
    @JsonKey(name: 'assigned_orders_count') required int assignedOrdersCount,
    @JsonKey(name: 'new_orders') required List<OrderModel> newOrders,
  }) = _OrdersList;

  factory OrdersList.fromJson(Map<String, dynamic> json) =>
      _$OrdersListFromJson(json);
}

@unfreezed
@immutable
class OrderModel with _$OrderModel {
 const OrderModel._();
   factory OrderModel({
    required int id,
     required CustomerModel customer,
    required String code,
    @JsonKey(name: 'total_items') required int totalItems,
    @JsonKey(name: 'allow_replacement') required bool allowReplacement,
    required String status,
    @JsonKey(name: 'preparation_minutes') required int preparationMinutes,
    @JsonKey(name: 'start_picking_at') required String startPickingAt,
    @JsonKey(name: 'order_details') List<OrderDetailsModel>? ordersDetails,

     /// used in local data
    @JsonKey(name: 'deleted_orders',defaultValue: <OrderDetailsModel>[]) List<OrderDetailsModel>? deletedOrders,

     /// changed_orders hold the replaced items and modified items
    @JsonKey(name: 'changed_products',defaultValue: <OrderDetailsModel>[]) List<OrderDetailsModel>? changedProducts,
    @JsonKey(name: 'picked_percent',defaultValue: 0.0) double? pickedPercent,
     @JsonKey(name: 'preparation_seconds',defaultValue: 0) int? preparationSeconds,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);

  OrderStatusEnum getOrderStatus(){
    switch(status){
      case 'preparing':
        return OrderStatusEnum.preparing;
      case 'new':
        return OrderStatusEnum.newOrder;
      default:
        return OrderStatusEnum.newOrder;
    }
  }

  bool get isAssigned => getOrderStatus() == OrderStatusEnum.preparing;
  bool get isNewOrder => getOrderStatus() == OrderStatusEnum.newOrder;

 String? getStartPickingDate(){
  try{
    DateTime date = DateTimeHelper.convertToDateTime(strDate: startPickingAt,formatType: "yyyy-MM-dd HH:mm:ss");
    String startDate = DateTimeHelper.formatDate(date: date, formatType: "dd-MM-yyyy - h:mm a");
    return startDate;
  }catch(error){
    return null;
  }
 }

}

@unfreezed
class OrderDetailsModel with _$OrderDetailsModel {
  OrderDetailsModel._();
   factory OrderDetailsModel({
    required int id,
    required String variation,
    required int quantity,
    required String price,

    /// return null in cancel order api
    ProductModel? product,

     /// have value when replace the item
     @JsonKey(name: "new_variant_id",defaultValue: -1) int? newVariantId,

     /// have value when edit the item price
     @JsonKey(name: "new_price",defaultValue: 0.0) double? newPrice,

     /// before do any edit in the product enter the note
     @JsonKey(name: "picker_notes",defaultValue: "",) String? pickerNotes,
  }) = _OrderDetailsModel;

  factory OrderDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsModelFromJson(json);

  String get getProductPrice{
    print("price is ====>>>> $price  ------- inside model ----- ");
    var itemPrice = double.parse(price);
    var singleItemPrice = (itemPrice/quantity).toStringAsFixed(2);
    print("single price is ====>>>> $singleItemPrice  ------- inside model ----- ");
    return singleItemPrice;
  }

  double get remainQntPrice{
    var itemPrice = double.parse(price);
    var singleItemPrice = (itemPrice/quantity);
    if(product!.replaced){
      return itemPrice*remainQnt ;
    }else{
      return singleItemPrice*remainQnt;
    }
  }

  int  get remainQnt{
    return quantity - product!.pickedQuantity!;
}

}


@unfreezed
class ProductModel with _$ProductModel {
  ProductModel._();
   factory ProductModel({
    required int id,
    required String name,
    required String barcode,
    required String unit,
    required CategoryModel category,
    @JsonKey(name: 'thumbnail_image') required String thumbnailImage,

     /// used in local data
    @JsonKey(name: 'picked_percent',defaultValue: 0.0) double? productPickedPercent,
    @JsonKey(name: 'picked_quantity',defaultValue: 0)  int? pickedQuantity,
    @JsonKey(name: 'product_status',defaultValue: ProductStatusEnum.noEdit)  ProductStatusEnum? productStatus,
    @JsonKey(name: 'show_edit_price',defaultValue: false)  bool? showEditPrice,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);


  bool get replaced => productStatus == ProductStatusEnum.replaced;

  bool get modified => productStatus == ProductStatusEnum.modified;

}

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required int id,
    required String name,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}


@freezed
class CustomerModel with _$CustomerModel {
  CustomerModel._();
   factory CustomerModel({
    required String name,
    required String email,
    required String phone,
  }) = _CustomerModel;

  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);


  String get customerPhone{
    BuildContext context  = getIt<GlobalContext>().context();
    return PhoneHelper.handleFullPhone(context, phone);
  }
}