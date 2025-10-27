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

  /// Serializes this OrdersList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrdersList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of OrdersList
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of OrdersList
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_assignedOrders),
      assignedOrdersCount,
      const DeepCollectionEquality().hash(_newOrders));

  /// Create a copy of OrdersList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of OrdersList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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
  String get code => throw _privateConstructorUsedError;
  set code(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_items')
  int get totalItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_items')
  set totalItems(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'allow_replacement')
  bool get allowReplacement => throw _privateConstructorUsedError;
  @JsonKey(name: 'allow_replacement')
  set allowReplacement(bool value) => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  set status(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'preparation_minutes')
  int get preparationMinutes => throw _privateConstructorUsedError;
  @JsonKey(name: 'preparation_minutes')
  set preparationMinutes(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_picking_at')
  String get startPickingAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_picking_at')
  set startPickingAt(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_details')
  List<OrderDetailsModel>? get ordersDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'order_details')
  set ordersDetails(List<OrderDetailsModel>? value) =>
      throw _privateConstructorUsedError;

  /// used in local data
  @JsonKey(name: 'deleted_orders', defaultValue: <OrderDetailsModel>[])
  List<OrderDetailsModel>? get deletedOrders =>
      throw _privateConstructorUsedError;

  /// used in local data
  @JsonKey(name: 'deleted_orders', defaultValue: <OrderDetailsModel>[])
  set deletedOrders(List<OrderDetailsModel>? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'picked_percent', defaultValue: 0.0)
  double? get pickedPercent => throw _privateConstructorUsedError;
  @JsonKey(name: 'picked_percent', defaultValue: 0.0)
  set pickedPercent(double? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'preparation_seconds', defaultValue: 0)
  int? get preparationSeconds => throw _privateConstructorUsedError;
  @JsonKey(name: 'preparation_seconds', defaultValue: 0)
  set preparationSeconds(int? value) => throw _privateConstructorUsedError;

  /// Serializes this OrderModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      String code,
      @JsonKey(name: 'total_items') int totalItems,
      @JsonKey(name: 'allow_replacement') bool allowReplacement,
      String status,
      @JsonKey(name: 'preparation_minutes') int preparationMinutes,
      @JsonKey(name: 'start_picking_at') String startPickingAt,
      @JsonKey(name: 'order_details') List<OrderDetailsModel>? ordersDetails,
      @JsonKey(name: 'deleted_orders', defaultValue: <OrderDetailsModel>[])
      List<OrderDetailsModel>? deletedOrders,
      @JsonKey(name: 'picked_percent', defaultValue: 0.0) double? pickedPercent,
      @JsonKey(name: 'preparation_seconds', defaultValue: 0)
      int? preparationSeconds});
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? totalItems = null,
    Object? allowReplacement = null,
    Object? status = null,
    Object? preparationMinutes = null,
    Object? startPickingAt = null,
    Object? ordersDetails = freezed,
    Object? deletedOrders = freezed,
    Object? pickedPercent = freezed,
    Object? preparationSeconds = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      allowReplacement: null == allowReplacement
          ? _value.allowReplacement
          : allowReplacement // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      preparationMinutes: null == preparationMinutes
          ? _value.preparationMinutes
          : preparationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      startPickingAt: null == startPickingAt
          ? _value.startPickingAt
          : startPickingAt // ignore: cast_nullable_to_non_nullable
              as String,
      ordersDetails: freezed == ordersDetails
          ? _value.ordersDetails
          : ordersDetails // ignore: cast_nullable_to_non_nullable
              as List<OrderDetailsModel>?,
      deletedOrders: freezed == deletedOrders
          ? _value.deletedOrders
          : deletedOrders // ignore: cast_nullable_to_non_nullable
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
      String code,
      @JsonKey(name: 'total_items') int totalItems,
      @JsonKey(name: 'allow_replacement') bool allowReplacement,
      String status,
      @JsonKey(name: 'preparation_minutes') int preparationMinutes,
      @JsonKey(name: 'start_picking_at') String startPickingAt,
      @JsonKey(name: 'order_details') List<OrderDetailsModel>? ordersDetails,
      @JsonKey(name: 'deleted_orders', defaultValue: <OrderDetailsModel>[])
      List<OrderDetailsModel>? deletedOrders,
      @JsonKey(name: 'picked_percent', defaultValue: 0.0) double? pickedPercent,
      @JsonKey(name: 'preparation_seconds', defaultValue: 0)
      int? preparationSeconds});
}

/// @nodoc
class __$$OrderModelImplCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$OrderModelImpl>
    implements _$$OrderModelImplCopyWith<$Res> {
  __$$OrderModelImplCopyWithImpl(
      _$OrderModelImpl _value, $Res Function(_$OrderModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? totalItems = null,
    Object? allowReplacement = null,
    Object? status = null,
    Object? preparationMinutes = null,
    Object? startPickingAt = null,
    Object? ordersDetails = freezed,
    Object? deletedOrders = freezed,
    Object? pickedPercent = freezed,
    Object? preparationSeconds = freezed,
  }) {
    return _then(_$OrderModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      allowReplacement: null == allowReplacement
          ? _value.allowReplacement
          : allowReplacement // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      preparationMinutes: null == preparationMinutes
          ? _value.preparationMinutes
          : preparationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      startPickingAt: null == startPickingAt
          ? _value.startPickingAt
          : startPickingAt // ignore: cast_nullable_to_non_nullable
              as String,
      ordersDetails: freezed == ordersDetails
          ? _value.ordersDetails
          : ordersDetails // ignore: cast_nullable_to_non_nullable
              as List<OrderDetailsModel>?,
      deletedOrders: freezed == deletedOrders
          ? _value.deletedOrders
          : deletedOrders // ignore: cast_nullable_to_non_nullable
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
      required this.code,
      @JsonKey(name: 'total_items') required this.totalItems,
      @JsonKey(name: 'allow_replacement') required this.allowReplacement,
      required this.status,
      @JsonKey(name: 'preparation_minutes') required this.preparationMinutes,
      @JsonKey(name: 'start_picking_at') required this.startPickingAt,
      @JsonKey(name: 'order_details') this.ordersDetails,
      @JsonKey(name: 'deleted_orders', defaultValue: <OrderDetailsModel>[])
      this.deletedOrders,
      @JsonKey(name: 'picked_percent', defaultValue: 0.0) this.pickedPercent,
      @JsonKey(name: 'preparation_seconds', defaultValue: 0)
      this.preparationSeconds})
      : super._();

  factory _$OrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderModelImplFromJson(json);

  @override
  int id;
  @override
  String code;
  @override
  @JsonKey(name: 'total_items')
  int totalItems;
  @override
  @JsonKey(name: 'allow_replacement')
  bool allowReplacement;
  @override
  String status;
  @override
  @JsonKey(name: 'preparation_minutes')
  int preparationMinutes;
  @override
  @JsonKey(name: 'start_picking_at')
  String startPickingAt;
  @override
  @JsonKey(name: 'order_details')
  List<OrderDetailsModel>? ordersDetails;

  /// used in local data
  @override
  @JsonKey(name: 'deleted_orders', defaultValue: <OrderDetailsModel>[])
  List<OrderDetailsModel>? deletedOrders;
  @override
  @JsonKey(name: 'picked_percent', defaultValue: 0.0)
  double? pickedPercent;
  @override
  @JsonKey(name: 'preparation_seconds', defaultValue: 0)
  int? preparationSeconds;

  @override
  String toString() {
    return 'OrderModel(id: $id, code: $code, totalItems: $totalItems, allowReplacement: $allowReplacement, status: $status, preparationMinutes: $preparationMinutes, startPickingAt: $startPickingAt, ordersDetails: $ordersDetails, deletedOrders: $deletedOrders, pickedPercent: $pickedPercent, preparationSeconds: $preparationSeconds)';
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      required String code,
      @JsonKey(name: 'total_items') required int totalItems,
      @JsonKey(name: 'allow_replacement') required bool allowReplacement,
      required String status,
      @JsonKey(name: 'preparation_minutes') required int preparationMinutes,
      @JsonKey(name: 'start_picking_at') required String startPickingAt,
      @JsonKey(name: 'order_details') List<OrderDetailsModel>? ordersDetails,
      @JsonKey(name: 'deleted_orders', defaultValue: <OrderDetailsModel>[])
      List<OrderDetailsModel>? deletedOrders,
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
  String get code;
  set code(String value);
  @override
  @JsonKey(name: 'total_items')
  int get totalItems;
  @JsonKey(name: 'total_items')
  set totalItems(int value);
  @override
  @JsonKey(name: 'allow_replacement')
  bool get allowReplacement;
  @JsonKey(name: 'allow_replacement')
  set allowReplacement(bool value);
  @override
  String get status;
  set status(String value);
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
  @JsonKey(name: 'order_details')
  List<OrderDetailsModel>? get ordersDetails;
  @JsonKey(name: 'order_details')
  set ordersDetails(List<OrderDetailsModel>? value);

  /// used in local data
  @override
  @JsonKey(name: 'deleted_orders', defaultValue: <OrderDetailsModel>[])
  List<OrderDetailsModel>? get deletedOrders;

  /// used in local data
  @JsonKey(name: 'deleted_orders', defaultValue: <OrderDetailsModel>[])
  set deletedOrders(List<OrderDetailsModel>? value);
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

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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
  @JsonKey(name: "new_price", defaultValue: 0.0)
  double? get newPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "new_price", defaultValue: 0.0)
  set newPrice(double? value) => throw _privateConstructorUsedError;

  /// Serializes this OrderDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      ProductModel? product,
      @JsonKey(name: "new_variant_id", defaultValue: -1) int? newVariantId,
      @JsonKey(name: "new_price", defaultValue: 0.0) double? newPrice});

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

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? variation = null,
    Object? quantity = null,
    Object? price = null,
    Object? product = freezed,
    Object? newVariantId = freezed,
    Object? newPrice = freezed,
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
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      newVariantId: freezed == newVariantId
          ? _value.newVariantId
          : newVariantId // ignore: cast_nullable_to_non_nullable
              as int?,
      newPrice: freezed == newPrice
          ? _value.newPrice
          : newPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
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
      ProductModel? product,
      @JsonKey(name: "new_variant_id", defaultValue: -1) int? newVariantId,
      @JsonKey(name: "new_price", defaultValue: 0.0) double? newPrice});

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

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? variation = null,
    Object? quantity = null,
    Object? price = null,
    Object? product = freezed,
    Object? newVariantId = freezed,
    Object? newPrice = freezed,
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
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      newVariantId: freezed == newVariantId
          ? _value.newVariantId
          : newVariantId // ignore: cast_nullable_to_non_nullable
              as int?,
      newPrice: freezed == newPrice
          ? _value.newPrice
          : newPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDetailsModelImpl implements _OrderDetailsModel {
  _$OrderDetailsModelImpl(
      {required this.id,
      required this.variation,
      required this.quantity,
      required this.price,
      this.product,
      @JsonKey(name: "new_variant_id", defaultValue: -1) this.newVariantId,
      @JsonKey(name: "new_price", defaultValue: 0.0) this.newPrice});

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

  /// return null in cancel order api
  @override
  ProductModel? product;

  /// have value when replace the item
  @override
  @JsonKey(name: "new_variant_id", defaultValue: -1)
  int? newVariantId;
  @override
  @JsonKey(name: "new_price", defaultValue: 0.0)
  double? newPrice;

  @override
  String toString() {
    return 'OrderDetailsModel(id: $id, variation: $variation, quantity: $quantity, price: $price, product: $product, newVariantId: $newVariantId, newPrice: $newPrice)';
  }

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

abstract class _OrderDetailsModel implements OrderDetailsModel {
  factory _OrderDetailsModel(
          {required int id,
          required String variation,
          required int quantity,
          required String price,
          ProductModel? product,
          @JsonKey(name: "new_variant_id", defaultValue: -1) int? newVariantId,
          @JsonKey(name: "new_price", defaultValue: 0.0) double? newPrice}) =
      _$OrderDetailsModelImpl;

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

  /// return null in cancel order api
  @override
  ProductModel? get product;

  /// return null in cancel order api
  set product(ProductModel? value);

  /// have value when replace the item
  @override
  @JsonKey(name: "new_variant_id", defaultValue: -1)
  int? get newVariantId;

  /// have value when replace the item
  @JsonKey(name: "new_variant_id", defaultValue: -1)
  set newVariantId(int? value);
  @override
  @JsonKey(name: "new_price", defaultValue: 0.0)
  double? get newPrice;
  @JsonKey(name: "new_price", defaultValue: 0.0)
  set newPrice(double? value);

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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
  CategoryModel get category => throw _privateConstructorUsedError;
  set category(CategoryModel value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_image')
  String get thumbnailImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_image')
  set thumbnailImage(String value) => throw _privateConstructorUsedError;

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

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      CategoryModel category,
      @JsonKey(name: 'thumbnail_image') String thumbnailImage,
      @JsonKey(name: 'picked_percent', defaultValue: 0.0)
      double? productPickedPercent,
      @JsonKey(name: 'picked_quantity', defaultValue: 0) int? pickedQuantity,
      @JsonKey(name: 'product_status', defaultValue: ProductStatusEnum.noEdit)
      ProductStatusEnum? productStatus});

  $CategoryModelCopyWith<$Res> get category;
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? category = null,
    Object? thumbnailImage = null,
    Object? productPickedPercent = freezed,
    Object? pickedQuantity = freezed,
    Object? productStatus = freezed,
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
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
      thumbnailImage: null == thumbnailImage
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String,
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
    ) as $Val);
  }

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res> get category {
    return $CategoryModelCopyWith<$Res>(_value.category, (value) {
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
      CategoryModel category,
      @JsonKey(name: 'thumbnail_image') String thumbnailImage,
      @JsonKey(name: 'picked_percent', defaultValue: 0.0)
      double? productPickedPercent,
      @JsonKey(name: 'picked_quantity', defaultValue: 0) int? pickedQuantity,
      @JsonKey(name: 'product_status', defaultValue: ProductStatusEnum.noEdit)
      ProductStatusEnum? productStatus});

  @override
  $CategoryModelCopyWith<$Res> get category;
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
      _$ProductModelImpl _value, $Res Function(_$ProductModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? category = null,
    Object? thumbnailImage = null,
    Object? productPickedPercent = freezed,
    Object? pickedQuantity = freezed,
    Object? productStatus = freezed,
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
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
      thumbnailImage: null == thumbnailImage
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl implements _ProductModel {
  _$ProductModelImpl(
      {required this.id,
      required this.name,
      required this.category,
      @JsonKey(name: 'thumbnail_image') required this.thumbnailImage,
      @JsonKey(name: 'picked_percent', defaultValue: 0.0)
      this.productPickedPercent,
      @JsonKey(name: 'picked_quantity', defaultValue: 0) this.pickedQuantity,
      @JsonKey(name: 'product_status', defaultValue: ProductStatusEnum.noEdit)
      this.productStatus});

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  int id;
  @override
  String name;
  @override
  CategoryModel category;
  @override
  @JsonKey(name: 'thumbnail_image')
  String thumbnailImage;

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
  String toString() {
    return 'ProductModel(id: $id, name: $name, category: $category, thumbnailImage: $thumbnailImage, productPickedPercent: $productPickedPercent, pickedQuantity: $pickedQuantity, productStatus: $productStatus)';
  }

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

abstract class _ProductModel implements ProductModel {
  factory _ProductModel(
      {required int id,
      required String name,
      required CategoryModel category,
      @JsonKey(name: 'thumbnail_image') required String thumbnailImage,
      @JsonKey(name: 'picked_percent', defaultValue: 0.0)
      double? productPickedPercent,
      @JsonKey(name: 'picked_quantity', defaultValue: 0) int? pickedQuantity,
      @JsonKey(name: 'product_status', defaultValue: ProductStatusEnum.noEdit)
      ProductStatusEnum? productStatus}) = _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  String get name;
  set name(String value);
  @override
  CategoryModel get category;
  set category(CategoryModel value);
  @override
  @JsonKey(name: 'thumbnail_image')
  String get thumbnailImage;
  @JsonKey(name: 'thumbnail_image')
  set thumbnailImage(String value);

  /// used in local data
  @override
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

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Serializes this CategoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
