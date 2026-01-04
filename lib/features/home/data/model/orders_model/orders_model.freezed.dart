// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrdersList _$OrdersListFromJson(Map<String, dynamic> json) {
  return _OrdersList.fromJson(json);
}

/// @nodoc
mixin _$OrdersList {
  @JsonKey(name: 'assigned_orders')
  List<OrderModel> get assignedOrders => throw _privateConstructorUsedError;
  @JsonKey(name: 'assigned_orders_count')
  int get assignedOrdersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_orders')
  List<OrderModel> get newOrders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrdersListCopyWith<OrdersList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersListCopyWith<$Res> {
  factory $OrdersListCopyWith(
          OrdersList value, $Res Function(OrdersList) then) =
      _$OrdersListCopyWithImpl<$Res, OrdersList>;
  @useResult
  $Res call(
      {@JsonKey(name: 'assigned_orders') List<OrderModel> assignedOrders,
      @JsonKey(name: 'assigned_orders_count') int assignedOrdersCount,
      @JsonKey(name: 'new_orders') List<OrderModel> newOrders});
}

/// @nodoc
class _$OrdersListCopyWithImpl<$Res, $Val extends OrdersList>
    implements $OrdersListCopyWith<$Res> {
  _$OrdersListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignedOrders = null,
    Object? assignedOrdersCount = null,
    Object? newOrders = null,
  }) {
    return _then(_value.copyWith(
      assignedOrders: null == assignedOrders
          ? _value.assignedOrders
          : assignedOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      assignedOrdersCount: null == assignedOrdersCount
          ? _value.assignedOrdersCount
          : assignedOrdersCount // ignore: cast_nullable_to_non_nullable
              as int,
      newOrders: null == newOrders
          ? _value.newOrders
          : newOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrdersListImplCopyWith<$Res>
    implements $OrdersListCopyWith<$Res> {
  factory _$$OrdersListImplCopyWith(
          _$OrdersListImpl value, $Res Function(_$OrdersListImpl) then) =
      __$$OrdersListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'assigned_orders') List<OrderModel> assignedOrders,
      @JsonKey(name: 'assigned_orders_count') int assignedOrdersCount,
      @JsonKey(name: 'new_orders') List<OrderModel> newOrders});
}

/// @nodoc
class __$$OrdersListImplCopyWithImpl<$Res>
    extends _$OrdersListCopyWithImpl<$Res, _$OrdersListImpl>
    implements _$$OrdersListImplCopyWith<$Res> {
  __$$OrdersListImplCopyWithImpl(
      _$OrdersListImpl _value, $Res Function(_$OrdersListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignedOrders = null,
    Object? assignedOrdersCount = null,
    Object? newOrders = null,
  }) {
    return _then(_$OrdersListImpl(
      assignedOrders: null == assignedOrders
          ? _value._assignedOrders
          : assignedOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      assignedOrdersCount: null == assignedOrdersCount
          ? _value.assignedOrdersCount
          : assignedOrdersCount // ignore: cast_nullable_to_non_nullable
              as int,
      newOrders: null == newOrders
          ? _value._newOrders
          : newOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrdersListImpl implements _OrdersList {
  const _$OrdersListImpl(
      {@JsonKey(name: 'assigned_orders')
      required final List<OrderModel> assignedOrders,
      @JsonKey(name: 'assigned_orders_count') required this.assignedOrdersCount,
      @JsonKey(name: 'new_orders') required final List<OrderModel> newOrders})
      : _assignedOrders = assignedOrders,
        _newOrders = newOrders;

  factory _$OrdersListImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersListImplFromJson(json);

  final List<OrderModel> _assignedOrders;
  @override
  @JsonKey(name: 'assigned_orders')
  List<OrderModel> get assignedOrders {
    if (_assignedOrders is EqualUnmodifiableListView) return _assignedOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assignedOrders);
  }

  @override
  @JsonKey(name: 'assigned_orders_count')
  final int assignedOrdersCount;
  final List<OrderModel> _newOrders;
  @override
  @JsonKey(name: 'new_orders')
  List<OrderModel> get newOrders {
    if (_newOrders is EqualUnmodifiableListView) return _newOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newOrders);
  }

  @override
  String toString() {
    return 'OrdersList(assignedOrders: $assignedOrders, assignedOrdersCount: $assignedOrdersCount, newOrders: $newOrders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersListImpl &&
            const DeepCollectionEquality()
                .equals(other._assignedOrders, _assignedOrders) &&
            (identical(other.assignedOrdersCount, assignedOrdersCount) ||
                other.assignedOrdersCount == assignedOrdersCount) &&
            const DeepCollectionEquality()
                .equals(other._newOrders, _newOrders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_assignedOrders),
      assignedOrdersCount,
      const DeepCollectionEquality().hash(_newOrders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersListImplCopyWith<_$OrdersListImpl> get copyWith =>
      __$$OrdersListImplCopyWithImpl<_$OrdersListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrdersListImplToJson(
      this,
    );
  }
}

abstract class _OrdersList implements OrdersList {
  const factory _OrdersList(
      {@JsonKey(name: 'assigned_orders')
      required final List<OrderModel> assignedOrders,
      @JsonKey(name: 'assigned_orders_count')
      required final int assignedOrdersCount,
      @JsonKey(name: 'new_orders')
      required final List<OrderModel> newOrders}) = _$OrdersListImpl;

  factory _OrdersList.fromJson(Map<String, dynamic> json) =
      _$OrdersListImpl.fromJson;

  @override
  @JsonKey(name: 'assigned_orders')
  List<OrderModel> get assignedOrders;
  @override
  @JsonKey(name: 'assigned_orders_count')
  int get assignedOrdersCount;
  @override
  @JsonKey(name: 'new_orders')
  List<OrderModel> get newOrders;
  @override
  @JsonKey(ignore: true)
  _$$OrdersListImplCopyWith<_$OrdersListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  CustomerModel get customer => throw _privateConstructorUsedError;
  set customer(CustomerModel value) => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  set code(String value) => throw _privateConstructorUsedError;
  String get total => throw _privateConstructorUsedError;
  set total(String value) => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  set status(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_items')
  int get totalItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_items')
  set totalItems(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'bag_count')
  int get bagsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'bag_count')
  set bagsCount(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'bag_price')
  double get bagPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'bag_price')
  set bagPrice(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'allow_replacement')
  bool get allowReplacement => throw _privateConstructorUsedError;
  @JsonKey(name: 'allow_replacement')
  set allowReplacement(bool value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_label')
  String get statusLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_label')
  set statusLabel(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'preparation_minutes')
  int get preparationMinutes => throw _privateConstructorUsedError;
  @JsonKey(name: 'preparation_minutes')
  set preparationMinutes(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_picking_at')
  String get startPickingAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_picking_at')
  set startPickingAt(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status')
  bool? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status')
  set paymentStatus(bool? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status_text')
  String? get paymentStatusText => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status_text')
  set paymentStatusText(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  String? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  set paymentMethod(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver')
  DriverModel? get driverInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver')
  set driverInfo(DriverModel? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_details')
  List<OrderDetailsModel>? get ordersDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'order_details')
  set ordersDetails(List<OrderDetailsModel>? value) =>
      throw _privateConstructorUsedError;

  /// all keys below used in local data
  @JsonKey(name: 'deleted_orders', defaultValue: <OrderDetailsModel>[])
  List<OrderDetailsModel>? get deletedOrders =>
      throw _privateConstructorUsedError;

  /// all keys below used in local data
  @JsonKey(name: 'deleted_orders', defaultValue: <OrderDetailsModel>[])
  set deletedOrders(List<OrderDetailsModel>? value) =>
      throw _privateConstructorUsedError;

  /// changed_orders hold the replaced items(that being replaced all) and modified items( only where there price edited)
  @JsonKey(name: 'changed_products', defaultValue: <OrderDetailsModel>[])
  List<OrderDetailsModel>? get changedProducts =>
      throw _privateConstructorUsedError;

  /// changed_orders hold the replaced items(that being replaced all) and modified items( only where there price edited)
  @JsonKey(name: 'changed_products', defaultValue: <OrderDetailsModel>[])
  set changedProducts(List<OrderDetailsModel>? value) =>
      throw _privateConstructorUsedError;

  /// qnt_changed_products hold the replaced items(that being replaced 1 by 1)
  /// in replace item...if the original one qnt reduced by 1
  /// the original will added in this list
  @JsonKey(name: 'qnt_changed_products', defaultValue: <OrderDetailsModel>[])
  List<OrderDetailsModel>? get qntChangedProducts =>
      throw _privateConstructorUsedError;

  /// qnt_changed_products hold the replaced items(that being replaced 1 by 1)
  /// in replace item...if the original one qnt reduced by 1
  /// the original will added in this list
  @JsonKey(name: 'qnt_changed_products', defaultValue: <OrderDetailsModel>[])
  set qntChangedProducts(List<OrderDetailsModel>? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'picked_percent', defaultValue: 0.0)
  double? get pickedPercent => throw _privateConstructorUsedError;
  @JsonKey(name: 'picked_percent', defaultValue: 0.0)
  set pickedPercent(double? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'preparation_seconds', defaultValue: 0)
  int? get preparationSeconds => throw _privateConstructorUsedError;
  @JsonKey(name: 'preparation_seconds', defaultValue: 0)
  set preparationSeconds(int? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {int id,
      CustomerModel customer,
      String code,
      String total,
      String status,
      @JsonKey(name: 'total_items') int totalItems,
      @JsonKey(name: 'bag_count') int bagsCount,
      @JsonKey(name: 'bag_price') double bagPrice,
      @JsonKey(name: 'allow_replacement') bool allowReplacement,
      @JsonKey(name: 'status_label') String statusLabel,
      @JsonKey(name: 'preparation_minutes') int preparationMinutes,
      @JsonKey(name: 'start_picking_at') String startPickingAt,
      @JsonKey(name: 'payment_status') bool? paymentStatus,
      @JsonKey(name: 'payment_status_text') String? paymentStatusText,
      @JsonKey(name: 'payment_method') String? paymentMethod,
      @JsonKey(name: 'driver') DriverModel? driverInfo,
      @JsonKey(name: 'order_details') List<OrderDetailsModel>? ordersDetails,
      @JsonKey(name: 'deleted_orders', defaultValue: <OrderDetailsModel>[])
      List<OrderDetailsModel>? deletedOrders,
      @JsonKey(name: 'changed_products', defaultValue: <OrderDetailsModel>[])
      List<OrderDetailsModel>? changedProducts,
      @JsonKey(
          name: 'qnt_changed_products', defaultValue: <OrderDetailsModel>[])
      List<OrderDetailsModel>? qntChangedProducts,
      @JsonKey(name: 'picked_percent', defaultValue: 0.0) double? pickedPercent,
      @JsonKey(name: 'preparation_seconds', defaultValue: 0)
      int? preparationSeconds});

  $CustomerModelCopyWith<$Res> get customer;
  $DriverModelCopyWith<$Res>? get driverInfo;
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customer = null,
    Object? code = null,
    Object? total = null,
    Object? status = null,
    Object? totalItems = null,
    Object? bagsCount = null,
    Object? bagPrice = null,
    Object? allowReplacement = null,
    Object? statusLabel = null,
    Object? preparationMinutes = null,
    Object? startPickingAt = null,
    Object? paymentStatus = freezed,
    Object? paymentStatusText = freezed,
    Object? paymentMethod = freezed,
    Object? driverInfo = freezed,
    Object? ordersDetails = freezed,
    Object? deletedOrders = freezed,
    Object? changedProducts = freezed,
    Object? qntChangedProducts = freezed,
    Object? pickedPercent = freezed,
    Object? preparationSeconds = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerModel,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      bagsCount: null == bagsCount
          ? _value.bagsCount
          : bagsCount // ignore: cast_nullable_to_non_nullable
              as int,
      bagPrice: null == bagPrice
          ? _value.bagPrice
          : bagPrice // ignore: cast_nullable_to_non_nullable
              as double,
      allowReplacement: null == allowReplacement
          ? _value.allowReplacement
          : allowReplacement // ignore: cast_nullable_to_non_nullable
              as bool,
      statusLabel: null == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String,
      preparationMinutes: null == preparationMinutes
          ? _value.preparationMinutes
          : preparationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      startPickingAt: null == startPickingAt
          ? _value.startPickingAt
          : startPickingAt // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      paymentStatusText: freezed == paymentStatusText
          ? _value.paymentStatusText
          : paymentStatusText // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      driverInfo: freezed == driverInfo
          ? _value.driverInfo
          : driverInfo // ignore: cast_nullable_to_non_nullable
              as DriverModel?,
      ordersDetails: freezed == ordersDetails
          ? _value.ordersDetails
          : ordersDetails // ignore: cast_nullable_to_non_nullable
              as List<OrderDetailsModel>?,
      deletedOrders: freezed == deletedOrders
          ? _value.deletedOrders
          : deletedOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderDetailsModel>?,
      changedProducts: freezed == changedProducts
          ? _value.changedProducts
          : changedProducts // ignore: cast_nullable_to_non_nullable
              as List<OrderDetailsModel>?,
      qntChangedProducts: freezed == qntChangedProducts
          ? _value.qntChangedProducts
          : qntChangedProducts // ignore: cast_nullable_to_non_nullable
              as List<OrderDetailsModel>?,
      pickedPercent: freezed == pickedPercent
          ? _value.pickedPercent
          : pickedPercent // ignore: cast_nullable_to_non_nullable
              as double?,
      preparationSeconds: freezed == preparationSeconds
          ? _value.preparationSeconds
          : preparationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerModelCopyWith<$Res> get customer {
    return $CustomerModelCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DriverModelCopyWith<$Res>? get driverInfo {
    if (_value.driverInfo == null) {
      return null;
    }

    return $DriverModelCopyWith<$Res>(_value.driverInfo!, (value) {
      return _then(_value.copyWith(driverInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderModelImplCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$OrderModelImplCopyWith(
          _$OrderModelImpl value, $Res Function(_$OrderModelImpl) then) =
      __$$OrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      CustomerModel customer,
      String code,
      String total,
      String status,
      @JsonKey(name: 'total_items') int totalItems,
      @JsonKey(name: 'bag_count') int bagsCount,
      @JsonKey(name: 'bag_price') double bagPrice,
      @JsonKey(name: 'allow_replacement') bool allowReplacement,
      @JsonKey(name: 'status_label') String statusLabel,
      @JsonKey(name: 'preparation_minutes') int preparationMinutes,
      @JsonKey(name: 'start_picking_at') String startPickingAt,
      @JsonKey(name: 'payment_status') bool? paymentStatus,
      @JsonKey(name: 'payment_status_text') String? paymentStatusText,
      @JsonKey(name: 'payment_method') String? paymentMethod,
      @JsonKey(name: 'driver') DriverModel? driverInfo,
      @JsonKey(name: 'order_details') List<OrderDetailsModel>? ordersDetails,
      @JsonKey(name: 'deleted_orders', defaultValue: <OrderDetailsModel>[])
      List<OrderDetailsModel>? deletedOrders,
      @JsonKey(name: 'changed_products', defaultValue: <OrderDetailsModel>[])
      List<OrderDetailsModel>? changedProducts,
      @JsonKey(
          name: 'qnt_changed_products', defaultValue: <OrderDetailsModel>[])
      List<OrderDetailsModel>? qntChangedProducts,
      @JsonKey(name: 'picked_percent', defaultValue: 0.0) double? pickedPercent,
      @JsonKey(name: 'preparation_seconds', defaultValue: 0)
      int? preparationSeconds});

  @override
  $CustomerModelCopyWith<$Res> get customer;
  @override
  $DriverModelCopyWith<$Res>? get driverInfo;
}

/// @nodoc
class __$$OrderModelImplCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$OrderModelImpl>
    implements _$$OrderModelImplCopyWith<$Res> {
  __$$OrderModelImplCopyWithImpl(
      _$OrderModelImpl _value, $Res Function(_$OrderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customer = null,
    Object? code = null,
    Object? total = null,
    Object? status = null,
    Object? totalItems = null,
    Object? bagsCount = null,
    Object? bagPrice = null,
    Object? allowReplacement = null,
    Object? statusLabel = null,
    Object? preparationMinutes = null,
    Object? startPickingAt = null,
    Object? paymentStatus = freezed,
    Object? paymentStatusText = freezed,
    Object? paymentMethod = freezed,
    Object? driverInfo = freezed,
    Object? ordersDetails = freezed,
    Object? deletedOrders = freezed,
    Object? changedProducts = freezed,
    Object? qntChangedProducts = freezed,
    Object? pickedPercent = freezed,
    Object? preparationSeconds = freezed,
  }) {
    return _then(_$OrderModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerModel,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      bagsCount: null == bagsCount
          ? _value.bagsCount
          : bagsCount // ignore: cast_nullable_to_non_nullable
              as int,
      bagPrice: null == bagPrice
          ? _value.bagPrice
          : bagPrice // ignore: cast_nullable_to_non_nullable
              as double,
      allowReplacement: null == allowReplacement
          ? _value.allowReplacement
          : allowReplacement // ignore: cast_nullable_to_non_nullable
              as bool,
      statusLabel: null == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String,
      preparationMinutes: null == preparationMinutes
          ? _value.preparationMinutes
          : preparationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      startPickingAt: null == startPickingAt
          ? _value.startPickingAt
          : startPickingAt // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      paymentStatusText: freezed == paymentStatusText
          ? _value.paymentStatusText
          : paymentStatusText // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      driverInfo: freezed == driverInfo
          ? _value.driverInfo
          : driverInfo // ignore: cast_nullable_to_non_nullable
              as DriverModel?,
      ordersDetails: freezed == ordersDetails
          ? _value.ordersDetails
          : ordersDetails // ignore: cast_nullable_to_non_nullable
              as List<OrderDetailsModel>?,
      deletedOrders: freezed == deletedOrders
          ? _value.deletedOrders
          : deletedOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderDetailsModel>?,
      changedProducts: freezed == changedProducts
          ? _value.changedProducts
          : changedProducts // ignore: cast_nullable_to_non_nullable
              as List<OrderDetailsModel>?,
      qntChangedProducts: freezed == qntChangedProducts
          ? _value.qntChangedProducts
          : qntChangedProducts // ignore: cast_nullable_to_non_nullable
              as List<OrderDetailsModel>?,
      pickedPercent: freezed == pickedPercent
          ? _value.pickedPercent
          : pickedPercent // ignore: cast_nullable_to_non_nullable
              as double?,
      preparationSeconds: freezed == preparationSeconds
          ? _value.preparationSeconds
          : preparationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderModelImpl extends _OrderModel {
  _$OrderModelImpl(
      {required this.id,
      required this.customer,
      required this.code,
      required this.total,
      required this.status,
      @JsonKey(name: 'total_items') required this.totalItems,
      @JsonKey(name: 'bag_count') required this.bagsCount,
      @JsonKey(name: 'bag_price') required this.bagPrice,
      @JsonKey(name: 'allow_replacement') required this.allowReplacement,
      @JsonKey(name: 'status_label') required this.statusLabel,
      @JsonKey(name: 'preparation_minutes') required this.preparationMinutes,
      @JsonKey(name: 'start_picking_at') required this.startPickingAt,
      @JsonKey(name: 'payment_status') this.paymentStatus,
      @JsonKey(name: 'payment_status_text') this.paymentStatusText,
      @JsonKey(name: 'payment_method') this.paymentMethod,
      @JsonKey(name: 'driver') required this.driverInfo,
      @JsonKey(name: 'order_details') this.ordersDetails,
      @JsonKey(name: 'deleted_orders', defaultValue: <OrderDetailsModel>[])
      this.deletedOrders,
      @JsonKey(name: 'changed_products', defaultValue: <OrderDetailsModel>[])
      this.changedProducts,
      @JsonKey(
          name: 'qnt_changed_products', defaultValue: <OrderDetailsModel>[])
      this.qntChangedProducts,
      @JsonKey(name: 'picked_percent', defaultValue: 0.0) this.pickedPercent,
      @JsonKey(name: 'preparation_seconds', defaultValue: 0)
      this.preparationSeconds})
      : super._();

  factory _$OrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderModelImplFromJson(json);

  @override
  int id;
  @override
  CustomerModel customer;
  @override
  String code;
  @override
  String total;
  @override
  String status;
  @override
  @JsonKey(name: 'total_items')
  int totalItems;
  @override
  @JsonKey(name: 'bag_count')
  int bagsCount;
  @override
  @JsonKey(name: 'bag_price')
  double bagPrice;
  @override
  @JsonKey(name: 'allow_replacement')
  bool allowReplacement;
  @override
  @JsonKey(name: 'status_label')
  String statusLabel;
  @override
  @JsonKey(name: 'preparation_minutes')
  int preparationMinutes;
  @override
  @JsonKey(name: 'start_picking_at')
  String startPickingAt;
  @override
  @JsonKey(name: 'payment_status')
  bool? paymentStatus;
  @override
  @JsonKey(name: 'payment_status_text')
  String? paymentStatusText;
  @override
  @JsonKey(name: 'payment_method')
  String? paymentMethod;
  @override
  @JsonKey(name: 'driver')
  DriverModel? driverInfo;
  @override
  @JsonKey(name: 'order_details')
  List<OrderDetailsModel>? ordersDetails;

  /// all keys below used in local data
  @override
  @JsonKey(name: 'deleted_orders', defaultValue: <OrderDetailsModel>[])
  List<OrderDetailsModel>? deletedOrders;

  /// changed_orders hold the replaced items(that being replaced all) and modified items( only where there price edited)
  @override
  @JsonKey(name: 'changed_products', defaultValue: <OrderDetailsModel>[])
  List<OrderDetailsModel>? changedProducts;

  /// qnt_changed_products hold the replaced items(that being replaced 1 by 1)
  /// in replace item...if the original one qnt reduced by 1
  /// the original will added in this list
  @override
  @JsonKey(name: 'qnt_changed_products', defaultValue: <OrderDetailsModel>[])
  List<OrderDetailsModel>? qntChangedProducts;
  @override
  @JsonKey(name: 'picked_percent', defaultValue: 0.0)
  double? pickedPercent;
  @override
  @JsonKey(name: 'preparation_seconds', defaultValue: 0)
  int? preparationSeconds;

  @override
  String toString() {
    return 'OrderModel(id: $id, customer: $customer, code: $code, total: $total, status: $status, totalItems: $totalItems, bagsCount: $bagsCount, bagPrice: $bagPrice, allowReplacement: $allowReplacement, statusLabel: $statusLabel, preparationMinutes: $preparationMinutes, startPickingAt: $startPickingAt, paymentStatus: $paymentStatus, paymentStatusText: $paymentStatusText, paymentMethod: $paymentMethod, driverInfo: $driverInfo, ordersDetails: $ordersDetails, deletedOrders: $deletedOrders, changedProducts: $changedProducts, qntChangedProducts: $qntChangedProducts, pickedPercent: $pickedPercent, preparationSeconds: $preparationSeconds)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      __$$OrderModelImplCopyWithImpl<_$OrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderModelImplToJson(
      this,
    );
  }
}

abstract class _OrderModel extends OrderModel {
  factory _OrderModel(
      {required int id,
      required CustomerModel customer,
      required String code,
      required String total,
      required String status,
      @JsonKey(name: 'total_items') required int totalItems,
      @JsonKey(name: 'bag_count') required int bagsCount,
      @JsonKey(name: 'bag_price') required double bagPrice,
      @JsonKey(name: 'allow_replacement') required bool allowReplacement,
      @JsonKey(name: 'status_label') required String statusLabel,
      @JsonKey(name: 'preparation_minutes') required int preparationMinutes,
      @JsonKey(name: 'start_picking_at') required String startPickingAt,
      @JsonKey(name: 'payment_status') bool? paymentStatus,
      @JsonKey(name: 'payment_status_text') String? paymentStatusText,
      @JsonKey(name: 'payment_method') String? paymentMethod,
      @JsonKey(name: 'driver') required DriverModel? driverInfo,
      @JsonKey(name: 'order_details') List<OrderDetailsModel>? ordersDetails,
      @JsonKey(name: 'deleted_orders', defaultValue: <OrderDetailsModel>[])
      List<OrderDetailsModel>? deletedOrders,
      @JsonKey(name: 'changed_products', defaultValue: <OrderDetailsModel>[])
      List<OrderDetailsModel>? changedProducts,
      @JsonKey(
          name: 'qnt_changed_products', defaultValue: <OrderDetailsModel>[])
      List<OrderDetailsModel>? qntChangedProducts,
      @JsonKey(name: 'picked_percent', defaultValue: 0.0) double? pickedPercent,
      @JsonKey(name: 'preparation_seconds', defaultValue: 0)
      int? preparationSeconds}) = _$OrderModelImpl;
  _OrderModel._() : super._();

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$OrderModelImpl.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  CustomerModel get customer;
  set customer(CustomerModel value);
  @override
  String get code;
  set code(String value);
  @override
  String get total;
  set total(String value);
  @override
  String get status;
  set status(String value);
  @override
  @JsonKey(name: 'total_items')
  int get totalItems;
  @JsonKey(name: 'total_items')
  set totalItems(int value);
  @override
  @JsonKey(name: 'bag_count')
  int get bagsCount;
  @JsonKey(name: 'bag_count')
  set bagsCount(int value);
  @override
  @JsonKey(name: 'bag_price')
  double get bagPrice;
  @JsonKey(name: 'bag_price')
  set bagPrice(double value);
  @override
  @JsonKey(name: 'allow_replacement')
  bool get allowReplacement;
  @JsonKey(name: 'allow_replacement')
  set allowReplacement(bool value);
  @override
  @JsonKey(name: 'status_label')
  String get statusLabel;
  @JsonKey(name: 'status_label')
  set statusLabel(String value);
  @override
  @JsonKey(name: 'preparation_minutes')
  int get preparationMinutes;
  @JsonKey(name: 'preparation_minutes')
  set preparationMinutes(int value);
  @override
  @JsonKey(name: 'start_picking_at')
  String get startPickingAt;
  @JsonKey(name: 'start_picking_at')
  set startPickingAt(String value);
  @override
  @JsonKey(name: 'payment_status')
  bool? get paymentStatus;
  @JsonKey(name: 'payment_status')
  set paymentStatus(bool? value);
  @override
  @JsonKey(name: 'payment_status_text')
  String? get paymentStatusText;
  @JsonKey(name: 'payment_status_text')
  set paymentStatusText(String? value);
  @override
  @JsonKey(name: 'payment_method')
  String? get paymentMethod;
  @JsonKey(name: 'payment_method')
  set paymentMethod(String? value);
  @override
  @JsonKey(name: 'driver')
  DriverModel? get driverInfo;
  @JsonKey(name: 'driver')
  set driverInfo(DriverModel? value);
  @override
  @JsonKey(name: 'order_details')
  List<OrderDetailsModel>? get ordersDetails;
  @JsonKey(name: 'order_details')
  set ordersDetails(List<OrderDetailsModel>? value);
  @override

  /// all keys below used in local data
  @JsonKey(name: 'deleted_orders', defaultValue: <OrderDetailsModel>[])
  List<OrderDetailsModel>? get deletedOrders;

  /// all keys below used in local data
  @JsonKey(name: 'deleted_orders', defaultValue: <OrderDetailsModel>[])
  set deletedOrders(List<OrderDetailsModel>? value);
  @override

  /// changed_orders hold the replaced items(that being replaced all) and modified items( only where there price edited)
  @JsonKey(name: 'changed_products', defaultValue: <OrderDetailsModel>[])
  List<OrderDetailsModel>? get changedProducts;

  /// changed_orders hold the replaced items(that being replaced all) and modified items( only where there price edited)
  @JsonKey(name: 'changed_products', defaultValue: <OrderDetailsModel>[])
  set changedProducts(List<OrderDetailsModel>? value);
  @override

  /// qnt_changed_products hold the replaced items(that being replaced 1 by 1)
  /// in replace item...if the original one qnt reduced by 1
  /// the original will added in this list
  @JsonKey(name: 'qnt_changed_products', defaultValue: <OrderDetailsModel>[])
  List<OrderDetailsModel>? get qntChangedProducts;

  /// qnt_changed_products hold the replaced items(that being replaced 1 by 1)
  /// in replace item...if the original one qnt reduced by 1
  /// the original will added in this list
  @JsonKey(name: 'qnt_changed_products', defaultValue: <OrderDetailsModel>[])
  set qntChangedProducts(List<OrderDetailsModel>? value);
  @override
  @JsonKey(name: 'picked_percent', defaultValue: 0.0)
  double? get pickedPercent;
  @JsonKey(name: 'picked_percent', defaultValue: 0.0)
  set pickedPercent(double? value);
  @override
  @JsonKey(name: 'preparation_seconds', defaultValue: 0)
  int? get preparationSeconds;
  @JsonKey(name: 'preparation_seconds', defaultValue: 0)
  set preparationSeconds(int? value);
  @override
  @JsonKey(ignore: true)
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderDetailsModel _$OrderDetailsModelFromJson(Map<String, dynamic> json) {
  return _OrderDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailsModel {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  String get variation => throw _privateConstructorUsedError;
  set variation(String value) => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  set quantity(int value) => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  set price(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_price")
  String get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_price")
  set unitPrice(String value) => throw _privateConstructorUsedError;

  /// return null in cancel order api
  ProductModel? get product => throw _privateConstructorUsedError;

  /// return null in cancel order api
  set product(ProductModel? value) => throw _privateConstructorUsedError;

  /// have value when replace the item
  @JsonKey(name: "new_variant_id", defaultValue: -1)
  int? get newVariantId => throw _privateConstructorUsedError;

  /// have value when replace the item
  @JsonKey(name: "new_variant_id", defaultValue: -1)
  set newVariantId(int? value) => throw _privateConstructorUsedError;

  /// have value when add new item
  @JsonKey(name: "added_variant_id", defaultValue: -1)
  int? get addedVariantId => throw _privateConstructorUsedError;

  /// have value when add new item
  @JsonKey(name: "added_variant_id", defaultValue: -1)
  set addedVariantId(int? value) => throw _privateConstructorUsedError;

  /// have value when edit the item price
  @JsonKey(name: "new_price", defaultValue: 0.0)
  double? get newPrice => throw _privateConstructorUsedError;

  /// have value when edit the item price
  @JsonKey(name: "new_price", defaultValue: 0.0)
  set newPrice(double? value) => throw _privateConstructorUsedError;

  /// before do any edit in the product enter the note
  @JsonKey(name: "picker_notes", defaultValue: "")
  String? get pickerNotes => throw _privateConstructorUsedError;

  /// before do any edit in the product enter the note
  @JsonKey(name: "picker_notes", defaultValue: "")
  set pickerNotes(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDetailsModelCopyWith<OrderDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsModelCopyWith<$Res> {
  factory $OrderDetailsModelCopyWith(
          OrderDetailsModel value, $Res Function(OrderDetailsModel) then) =
      _$OrderDetailsModelCopyWithImpl<$Res, OrderDetailsModel>;
  @useResult
  $Res call(
      {int id,
      String variation,
      int quantity,
      String price,
      @JsonKey(name: "unit_price") String unitPrice,
      ProductModel? product,
      @JsonKey(name: "new_variant_id", defaultValue: -1) int? newVariantId,
      @JsonKey(name: "added_variant_id", defaultValue: -1) int? addedVariantId,
      @JsonKey(name: "new_price", defaultValue: 0.0) double? newPrice,
      @JsonKey(name: "picker_notes", defaultValue: "") String? pickerNotes});

  $ProductModelCopyWith<$Res>? get product;
}

/// @nodoc
class _$OrderDetailsModelCopyWithImpl<$Res, $Val extends OrderDetailsModel>
    implements $OrderDetailsModelCopyWith<$Res> {
  _$OrderDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? variation = null,
    Object? quantity = null,
    Object? price = null,
    Object? unitPrice = null,
    Object? product = freezed,
    Object? newVariantId = freezed,
    Object? addedVariantId = freezed,
    Object? newPrice = freezed,
    Object? pickerNotes = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      variation: null == variation
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as String,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      newVariantId: freezed == newVariantId
          ? _value.newVariantId
          : newVariantId // ignore: cast_nullable_to_non_nullable
              as int?,
      addedVariantId: freezed == addedVariantId
          ? _value.addedVariantId
          : addedVariantId // ignore: cast_nullable_to_non_nullable
              as int?,
      newPrice: freezed == newPrice
          ? _value.newPrice
          : newPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      pickerNotes: freezed == pickerNotes
          ? _value.pickerNotes
          : pickerNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductModelCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderDetailsModelImplCopyWith<$Res>
    implements $OrderDetailsModelCopyWith<$Res> {
  factory _$$OrderDetailsModelImplCopyWith(_$OrderDetailsModelImpl value,
          $Res Function(_$OrderDetailsModelImpl) then) =
      __$$OrderDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String variation,
      int quantity,
      String price,
      @JsonKey(name: "unit_price") String unitPrice,
      ProductModel? product,
      @JsonKey(name: "new_variant_id", defaultValue: -1) int? newVariantId,
      @JsonKey(name: "added_variant_id", defaultValue: -1) int? addedVariantId,
      @JsonKey(name: "new_price", defaultValue: 0.0) double? newPrice,
      @JsonKey(name: "picker_notes", defaultValue: "") String? pickerNotes});

  @override
  $ProductModelCopyWith<$Res>? get product;
}

/// @nodoc
class __$$OrderDetailsModelImplCopyWithImpl<$Res>
    extends _$OrderDetailsModelCopyWithImpl<$Res, _$OrderDetailsModelImpl>
    implements _$$OrderDetailsModelImplCopyWith<$Res> {
  __$$OrderDetailsModelImplCopyWithImpl(_$OrderDetailsModelImpl _value,
      $Res Function(_$OrderDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? variation = null,
    Object? quantity = null,
    Object? price = null,
    Object? unitPrice = null,
    Object? product = freezed,
    Object? newVariantId = freezed,
    Object? addedVariantId = freezed,
    Object? newPrice = freezed,
    Object? pickerNotes = freezed,
  }) {
    return _then(_$OrderDetailsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      variation: null == variation
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as String,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      newVariantId: freezed == newVariantId
          ? _value.newVariantId
          : newVariantId // ignore: cast_nullable_to_non_nullable
              as int?,
      addedVariantId: freezed == addedVariantId
          ? _value.addedVariantId
          : addedVariantId // ignore: cast_nullable_to_non_nullable
              as int?,
      newPrice: freezed == newPrice
          ? _value.newPrice
          : newPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      pickerNotes: freezed == pickerNotes
          ? _value.pickerNotes
          : pickerNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDetailsModelImpl extends _OrderDetailsModel {
  _$OrderDetailsModelImpl(
      {required this.id,
      required this.variation,
      required this.quantity,
      required this.price,
      @JsonKey(name: "unit_price") required this.unitPrice,
      this.product,
      @JsonKey(name: "new_variant_id", defaultValue: -1) this.newVariantId,
      @JsonKey(name: "added_variant_id", defaultValue: -1) this.addedVariantId,
      @JsonKey(name: "new_price", defaultValue: 0.0) this.newPrice,
      @JsonKey(name: "picker_notes", defaultValue: "") this.pickerNotes})
      : super._();

  factory _$OrderDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDetailsModelImplFromJson(json);

  @override
  int id;
  @override
  String variation;
  @override
  int quantity;
  @override
  String price;
  @override
  @JsonKey(name: "unit_price")
  String unitPrice;

  /// return null in cancel order api
  @override
  ProductModel? product;

  /// have value when replace the item
  @override
  @JsonKey(name: "new_variant_id", defaultValue: -1)
  int? newVariantId;

  /// have value when add new item
  @override
  @JsonKey(name: "added_variant_id", defaultValue: -1)
  int? addedVariantId;

  /// have value when edit the item price
  @override
  @JsonKey(name: "new_price", defaultValue: 0.0)
  double? newPrice;

  /// before do any edit in the product enter the note
  @override
  @JsonKey(name: "picker_notes", defaultValue: "")
  String? pickerNotes;

  @override
  String toString() {
    return 'OrderDetailsModel(id: $id, variation: $variation, quantity: $quantity, price: $price, unitPrice: $unitPrice, product: $product, newVariantId: $newVariantId, addedVariantId: $addedVariantId, newPrice: $newPrice, pickerNotes: $pickerNotes)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDetailsModelImplCopyWith<_$OrderDetailsModelImpl> get copyWith =>
      __$$OrderDetailsModelImplCopyWithImpl<_$OrderDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _OrderDetailsModel extends OrderDetailsModel {
  factory _OrderDetailsModel(
      {required int id,
      required String variation,
      required int quantity,
      required String price,
      @JsonKey(name: "unit_price") required String unitPrice,
      ProductModel? product,
      @JsonKey(name: "new_variant_id", defaultValue: -1) int? newVariantId,
      @JsonKey(name: "added_variant_id", defaultValue: -1) int? addedVariantId,
      @JsonKey(name: "new_price", defaultValue: 0.0) double? newPrice,
      @JsonKey(name: "picker_notes", defaultValue: "")
      String? pickerNotes}) = _$OrderDetailsModelImpl;
  _OrderDetailsModel._() : super._();

  factory _OrderDetailsModel.fromJson(Map<String, dynamic> json) =
      _$OrderDetailsModelImpl.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  String get variation;
  set variation(String value);
  @override
  int get quantity;
  set quantity(int value);
  @override
  String get price;
  set price(String value);
  @override
  @JsonKey(name: "unit_price")
  String get unitPrice;
  @JsonKey(name: "unit_price")
  set unitPrice(String value);
  @override

  /// return null in cancel order api
  ProductModel? get product;

  /// return null in cancel order api
  set product(ProductModel? value);
  @override

  /// have value when replace the item
  @JsonKey(name: "new_variant_id", defaultValue: -1)
  int? get newVariantId;

  /// have value when replace the item
  @JsonKey(name: "new_variant_id", defaultValue: -1)
  set newVariantId(int? value);
  @override

  /// have value when add new item
  @JsonKey(name: "added_variant_id", defaultValue: -1)
  int? get addedVariantId;

  /// have value when add new item
  @JsonKey(name: "added_variant_id", defaultValue: -1)
  set addedVariantId(int? value);
  @override

  /// have value when edit the item price
  @JsonKey(name: "new_price", defaultValue: 0.0)
  double? get newPrice;

  /// have value when edit the item price
  @JsonKey(name: "new_price", defaultValue: 0.0)
  set newPrice(double? value);
  @override

  /// before do any edit in the product enter the note
  @JsonKey(name: "picker_notes", defaultValue: "")
  String? get pickerNotes;

  /// before do any edit in the product enter the note
  @JsonKey(name: "picker_notes", defaultValue: "")
  set pickerNotes(String? value);
  @override
  @JsonKey(ignore: true)
  _$$OrderDetailsModelImplCopyWith<_$OrderDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get barcode => throw _privateConstructorUsedError;
  set barcode(String value) => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  set unit(String value) => throw _privateConstructorUsedError;
  CategoryModel? get category => throw _privateConstructorUsedError;
  set category(CategoryModel? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_image')
  String get thumbnailImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_image')
  set thumbnailImage(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_fresh')
  bool get isFresh => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_fresh')
  set isFresh(bool value) => throw _privateConstructorUsedError;

  /// used in local data
  @JsonKey(name: 'picked_percent', defaultValue: 0.0)
  double? get productPickedPercent => throw _privateConstructorUsedError;

  /// used in local data
  @JsonKey(name: 'picked_percent', defaultValue: 0.0)
  set productPickedPercent(double? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'picked_quantity', defaultValue: 0)
  int? get pickedQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'picked_quantity', defaultValue: 0)
  set pickedQuantity(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_status', defaultValue: ProductStatusEnum.noEdit)
  ProductStatusEnum? get productStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_status', defaultValue: ProductStatusEnum.noEdit)
  set productStatus(ProductStatusEnum? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'show_edit_price', defaultValue: false)
  bool? get showEditPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'show_edit_price', defaultValue: false)
  set showEditPrice(bool? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String barcode,
      String unit,
      CategoryModel? category,
      @JsonKey(name: 'thumbnail_image') String thumbnailImage,
      @JsonKey(name: 'is_fresh') bool isFresh,
      @JsonKey(name: 'picked_percent', defaultValue: 0.0)
      double? productPickedPercent,
      @JsonKey(name: 'picked_quantity', defaultValue: 0) int? pickedQuantity,
      @JsonKey(name: 'product_status', defaultValue: ProductStatusEnum.noEdit)
      ProductStatusEnum? productStatus,
      @JsonKey(name: 'show_edit_price', defaultValue: false)
      bool? showEditPrice});

  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? barcode = null,
    Object? unit = null,
    Object? category = freezed,
    Object? thumbnailImage = null,
    Object? isFresh = null,
    Object? productPickedPercent = freezed,
    Object? pickedQuantity = freezed,
    Object? productStatus = freezed,
    Object? showEditPrice = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      thumbnailImage: null == thumbnailImage
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String,
      isFresh: null == isFresh
          ? _value.isFresh
          : isFresh // ignore: cast_nullable_to_non_nullable
              as bool,
      productPickedPercent: freezed == productPickedPercent
          ? _value.productPickedPercent
          : productPickedPercent // ignore: cast_nullable_to_non_nullable
              as double?,
      pickedQuantity: freezed == pickedQuantity
          ? _value.pickedQuantity
          : pickedQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      productStatus: freezed == productStatus
          ? _value.productStatus
          : productStatus // ignore: cast_nullable_to_non_nullable
              as ProductStatusEnum?,
      showEditPrice: freezed == showEditPrice
          ? _value.showEditPrice
          : showEditPrice // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
          _$ProductModelImpl value, $Res Function(_$ProductModelImpl) then) =
      __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String barcode,
      String unit,
      CategoryModel? category,
      @JsonKey(name: 'thumbnail_image') String thumbnailImage,
      @JsonKey(name: 'is_fresh') bool isFresh,
      @JsonKey(name: 'picked_percent', defaultValue: 0.0)
      double? productPickedPercent,
      @JsonKey(name: 'picked_quantity', defaultValue: 0) int? pickedQuantity,
      @JsonKey(name: 'product_status', defaultValue: ProductStatusEnum.noEdit)
      ProductStatusEnum? productStatus,
      @JsonKey(name: 'show_edit_price', defaultValue: false)
      bool? showEditPrice});

  @override
  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
      _$ProductModelImpl _value, $Res Function(_$ProductModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? barcode = null,
    Object? unit = null,
    Object? category = freezed,
    Object? thumbnailImage = null,
    Object? isFresh = null,
    Object? productPickedPercent = freezed,
    Object? pickedQuantity = freezed,
    Object? productStatus = freezed,
    Object? showEditPrice = freezed,
  }) {
    return _then(_$ProductModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      thumbnailImage: null == thumbnailImage
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String,
      isFresh: null == isFresh
          ? _value.isFresh
          : isFresh // ignore: cast_nullable_to_non_nullable
              as bool,
      productPickedPercent: freezed == productPickedPercent
          ? _value.productPickedPercent
          : productPickedPercent // ignore: cast_nullable_to_non_nullable
              as double?,
      pickedQuantity: freezed == pickedQuantity
          ? _value.pickedQuantity
          : pickedQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      productStatus: freezed == productStatus
          ? _value.productStatus
          : productStatus // ignore: cast_nullable_to_non_nullable
              as ProductStatusEnum?,
      showEditPrice: freezed == showEditPrice
          ? _value.showEditPrice
          : showEditPrice // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl extends _ProductModel {
  _$ProductModelImpl(
      {required this.id,
      required this.name,
      required this.barcode,
      required this.unit,
      this.category,
      @JsonKey(name: 'thumbnail_image') required this.thumbnailImage,
      @JsonKey(name: 'is_fresh') required this.isFresh,
      @JsonKey(name: 'picked_percent', defaultValue: 0.0)
      this.productPickedPercent,
      @JsonKey(name: 'picked_quantity', defaultValue: 0) this.pickedQuantity,
      @JsonKey(name: 'product_status', defaultValue: ProductStatusEnum.noEdit)
      this.productStatus,
      @JsonKey(name: 'show_edit_price', defaultValue: false)
      this.showEditPrice})
      : super._();

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  int id;
  @override
  String name;
  @override
  String barcode;
  @override
  String unit;
  @override
  CategoryModel? category;
  @override
  @JsonKey(name: 'thumbnail_image')
  String thumbnailImage;
  @override
  @JsonKey(name: 'is_fresh')
  bool isFresh;

  /// used in local data
  @override
  @JsonKey(name: 'picked_percent', defaultValue: 0.0)
  double? productPickedPercent;
  @override
  @JsonKey(name: 'picked_quantity', defaultValue: 0)
  int? pickedQuantity;
  @override
  @JsonKey(name: 'product_status', defaultValue: ProductStatusEnum.noEdit)
  ProductStatusEnum? productStatus;
  @override
  @JsonKey(name: 'show_edit_price', defaultValue: false)
  bool? showEditPrice;

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, barcode: $barcode, unit: $unit, category: $category, thumbnailImage: $thumbnailImage, isFresh: $isFresh, productPickedPercent: $productPickedPercent, pickedQuantity: $pickedQuantity, productStatus: $productStatus, showEditPrice: $showEditPrice)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(
      this,
    );
  }
}

abstract class _ProductModel extends ProductModel {
  factory _ProductModel(
      {required int id,
      required String name,
      required String barcode,
      required String unit,
      CategoryModel? category,
      @JsonKey(name: 'thumbnail_image') required String thumbnailImage,
      @JsonKey(name: 'is_fresh') required bool isFresh,
      @JsonKey(name: 'picked_percent', defaultValue: 0.0)
      double? productPickedPercent,
      @JsonKey(name: 'picked_quantity', defaultValue: 0) int? pickedQuantity,
      @JsonKey(name: 'product_status', defaultValue: ProductStatusEnum.noEdit)
      ProductStatusEnum? productStatus,
      @JsonKey(name: 'show_edit_price', defaultValue: false)
      bool? showEditPrice}) = _$ProductModelImpl;
  _ProductModel._() : super._();

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  String get name;
  set name(String value);
  @override
  String get barcode;
  set barcode(String value);
  @override
  String get unit;
  set unit(String value);
  @override
  CategoryModel? get category;
  set category(CategoryModel? value);
  @override
  @JsonKey(name: 'thumbnail_image')
  String get thumbnailImage;
  @JsonKey(name: 'thumbnail_image')
  set thumbnailImage(String value);
  @override
  @JsonKey(name: 'is_fresh')
  bool get isFresh;
  @JsonKey(name: 'is_fresh')
  set isFresh(bool value);
  @override

  /// used in local data
  @JsonKey(name: 'picked_percent', defaultValue: 0.0)
  double? get productPickedPercent;

  /// used in local data
  @JsonKey(name: 'picked_percent', defaultValue: 0.0)
  set productPickedPercent(double? value);
  @override
  @JsonKey(name: 'picked_quantity', defaultValue: 0)
  int? get pickedQuantity;
  @JsonKey(name: 'picked_quantity', defaultValue: 0)
  set pickedQuantity(int? value);
  @override
  @JsonKey(name: 'product_status', defaultValue: ProductStatusEnum.noEdit)
  ProductStatusEnum? get productStatus;
  @JsonKey(name: 'product_status', defaultValue: ProductStatusEnum.noEdit)
  set productStatus(ProductStatusEnum? value);
  @override
  @JsonKey(name: 'show_edit_price', defaultValue: false)
  bool? get showEditPrice;
  @JsonKey(name: 'show_edit_price', defaultValue: false)
  set showEditPrice(bool? value);
  @override
  @JsonKey(ignore: true)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res, CategoryModel>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res, $Val extends CategoryModel>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryModelImplCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$CategoryModelImplCopyWith(
          _$CategoryModelImpl value, $Res Function(_$CategoryModelImpl) then) =
      __$$CategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$CategoryModelImplCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res, _$CategoryModelImpl>
    implements _$$CategoryModelImplCopyWith<$Res> {
  __$$CategoryModelImplCopyWithImpl(
      _$CategoryModelImpl _value, $Res Function(_$CategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$CategoryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryModelImpl implements _CategoryModel {
  const _$CategoryModelImpl({required this.id, required this.name});

  factory _$CategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'CategoryModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      __$$CategoryModelImplCopyWithImpl<_$CategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryModel implements CategoryModel {
  const factory _CategoryModel(
      {required final int id,
      required final String name}) = _$CategoryModelImpl;

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$CategoryModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomerModel _$CustomerModelFromJson(Map<String, dynamic> json) {
  return _CustomerModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerModel {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerModelCopyWith<CustomerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerModelCopyWith<$Res> {
  factory $CustomerModelCopyWith(
          CustomerModel value, $Res Function(CustomerModel) then) =
      _$CustomerModelCopyWithImpl<$Res, CustomerModel>;
  @useResult
  $Res call({String name, String email, String phone});
}

/// @nodoc
class _$CustomerModelCopyWithImpl<$Res, $Val extends CustomerModel>
    implements $CustomerModelCopyWith<$Res> {
  _$CustomerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerModelImplCopyWith<$Res>
    implements $CustomerModelCopyWith<$Res> {
  factory _$$CustomerModelImplCopyWith(
          _$CustomerModelImpl value, $Res Function(_$CustomerModelImpl) then) =
      __$$CustomerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email, String phone});
}

/// @nodoc
class __$$CustomerModelImplCopyWithImpl<$Res>
    extends _$CustomerModelCopyWithImpl<$Res, _$CustomerModelImpl>
    implements _$$CustomerModelImplCopyWith<$Res> {
  __$$CustomerModelImplCopyWithImpl(
      _$CustomerModelImpl _value, $Res Function(_$CustomerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phone = null,
  }) {
    return _then(_$CustomerModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerModelImpl extends _CustomerModel {
  _$CustomerModelImpl(
      {required this.name, required this.email, required this.phone})
      : super._();

  factory _$CustomerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerModelImplFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String phone;

  @override
  String toString() {
    return 'CustomerModel(name: $name, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerModelImplCopyWith<_$CustomerModelImpl> get copyWith =>
      __$$CustomerModelImplCopyWithImpl<_$CustomerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerModelImplToJson(
      this,
    );
  }
}

abstract class _CustomerModel extends CustomerModel {
  factory _CustomerModel(
      {required final String name,
      required final String email,
      required final String phone}) = _$CustomerModelImpl;
  _CustomerModel._() : super._();

  factory _CustomerModel.fromJson(Map<String, dynamic> json) =
      _$CustomerModelImpl.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$CustomerModelImplCopyWith<_$CustomerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DriverModel _$DriverModelFromJson(Map<String, dynamic> json) {
  return _DriverModel.fromJson(json);
}

/// @nodoc
mixin _$DriverModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "avg_rate")
  num get rate => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverModelCopyWith<DriverModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverModelCopyWith<$Res> {
  factory $DriverModelCopyWith(
          DriverModel value, $Res Function(DriverModel) then) =
      _$DriverModelCopyWithImpl<$Res, DriverModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "avg_rate") num rate,
      String name,
      String avatar,
      String email,
      String phone});
}

/// @nodoc
class _$DriverModelCopyWithImpl<$Res, $Val extends DriverModel>
    implements $DriverModelCopyWith<$Res> {
  _$DriverModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rate = null,
    Object? name = null,
    Object? avatar = null,
    Object? email = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as num,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DriverModelImplCopyWith<$Res>
    implements $DriverModelCopyWith<$Res> {
  factory _$$DriverModelImplCopyWith(
          _$DriverModelImpl value, $Res Function(_$DriverModelImpl) then) =
      __$$DriverModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "avg_rate") num rate,
      String name,
      String avatar,
      String email,
      String phone});
}

/// @nodoc
class __$$DriverModelImplCopyWithImpl<$Res>
    extends _$DriverModelCopyWithImpl<$Res, _$DriverModelImpl>
    implements _$$DriverModelImplCopyWith<$Res> {
  __$$DriverModelImplCopyWithImpl(
      _$DriverModelImpl _value, $Res Function(_$DriverModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rate = null,
    Object? name = null,
    Object? avatar = null,
    Object? email = null,
    Object? phone = null,
  }) {
    return _then(_$DriverModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as num,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverModelImpl extends _DriverModel {
  _$DriverModelImpl(
      {required this.id,
      @JsonKey(name: "avg_rate") required this.rate,
      required this.name,
      required this.avatar,
      required this.email,
      required this.phone})
      : super._();

  factory _$DriverModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "avg_rate")
  final num rate;
  @override
  final String name;
  @override
  final String avatar;
  @override
  final String email;
  @override
  final String phone;

  @override
  String toString() {
    return 'DriverModel(id: $id, rate: $rate, name: $name, avatar: $avatar, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, rate, name, avatar, email, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverModelImplCopyWith<_$DriverModelImpl> get copyWith =>
      __$$DriverModelImplCopyWithImpl<_$DriverModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverModelImplToJson(
      this,
    );
  }
}

abstract class _DriverModel extends DriverModel {
  factory _DriverModel(
      {required final int id,
      @JsonKey(name: "avg_rate") required final num rate,
      required final String name,
      required final String avatar,
      required final String email,
      required final String phone}) = _$DriverModelImpl;
  _DriverModel._() : super._();

  factory _DriverModel.fromJson(Map<String, dynamic> json) =
      _$DriverModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "avg_rate")
  num get rate;
  @override
  String get name;
  @override
  String get avatar;
  @override
  String get email;
  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$DriverModelImplCopyWith<_$DriverModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
