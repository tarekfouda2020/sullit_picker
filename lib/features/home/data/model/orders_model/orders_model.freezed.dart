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
  @HiveField(0)
  @JsonKey(name: 'assigned_orders')
  List<OrderModel> get assignedOrders => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'assigned_orders_count')
  int get assignedOrdersCount => throw _privateConstructorUsedError;
  @HiveField(2)
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
      {@HiveField(0)
      @JsonKey(name: 'assigned_orders')
      List<OrderModel> assignedOrders,
      @HiveField(1)
      @JsonKey(name: 'assigned_orders_count')
      int assignedOrdersCount,
      @HiveField(2) @JsonKey(name: 'new_orders') List<OrderModel> newOrders});
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
      {@HiveField(0)
      @JsonKey(name: 'assigned_orders')
      List<OrderModel> assignedOrders,
      @HiveField(1)
      @JsonKey(name: 'assigned_orders_count')
      int assignedOrdersCount,
      @HiveField(2) @JsonKey(name: 'new_orders') List<OrderModel> newOrders});
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
@HiveType(typeId: 0, adapterName: "OrdersListAdapter")
class _$OrdersListImpl implements _OrdersList {
  const _$OrdersListImpl(
      {@HiveField(0)
      @JsonKey(name: 'assigned_orders')
      required final List<OrderModel> assignedOrders,
      @HiveField(1)
      @JsonKey(name: 'assigned_orders_count')
      required this.assignedOrdersCount,
      @HiveField(2)
      @JsonKey(name: 'new_orders')
      required final List<OrderModel> newOrders})
      : _assignedOrders = assignedOrders,
        _newOrders = newOrders;

  factory _$OrdersListImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersListImplFromJson(json);

  final List<OrderModel> _assignedOrders;
  @override
  @HiveField(0)
  @JsonKey(name: 'assigned_orders')
  List<OrderModel> get assignedOrders {
    if (_assignedOrders is EqualUnmodifiableListView) return _assignedOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assignedOrders);
  }

  @override
  @HiveField(1)
  @JsonKey(name: 'assigned_orders_count')
  final int assignedOrdersCount;
  final List<OrderModel> _newOrders;
  @override
  @HiveField(2)
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
      {@HiveField(0)
      @JsonKey(name: 'assigned_orders')
      required final List<OrderModel> assignedOrders,
      @HiveField(1)
      @JsonKey(name: 'assigned_orders_count')
      required final int assignedOrdersCount,
      @HiveField(2)
      @JsonKey(name: 'new_orders')
      required final List<OrderModel> newOrders}) = _$OrdersListImpl;

  factory _OrdersList.fromJson(Map<String, dynamic> json) =
      _$OrdersListImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'assigned_orders')
  List<OrderModel> get assignedOrders;
  @override
  @HiveField(1)
  @JsonKey(name: 'assigned_orders_count')
  int get assignedOrdersCount;
  @override
  @HiveField(2)
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
  return _OOrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get code => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'total_items')
  int get totalItems => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'allow_replacement')
  bool get allowReplacement => throw _privateConstructorUsedError;
  @HiveField(4)
  String get status => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'preparation_minutes')
  int get preparationMinutes => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: 'start_picking_at')
  String get startPickingAt => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: 'order_details')
  List<OrderDetailsModel>? get ordersDetails =>
      throw _privateConstructorUsedError;

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
      {@HiveField(0) int id,
      @HiveField(1) String code,
      @HiveField(2) @JsonKey(name: 'total_items') int totalItems,
      @HiveField(3) @JsonKey(name: 'allow_replacement') bool allowReplacement,
      @HiveField(4) String status,
      @HiveField(5)
      @JsonKey(name: 'preparation_minutes')
      int preparationMinutes,
      @HiveField(6) @JsonKey(name: 'start_picking_at') String startPickingAt,
      @HiveField(7)
      @JsonKey(name: 'order_details')
      List<OrderDetailsModel>? ordersDetails});
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OOrderModelImplCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$OOrderModelImplCopyWith(
          _$OOrderModelImpl value, $Res Function(_$OOrderModelImpl) then) =
      __$$OOrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String code,
      @HiveField(2) @JsonKey(name: 'total_items') int totalItems,
      @HiveField(3) @JsonKey(name: 'allow_replacement') bool allowReplacement,
      @HiveField(4) String status,
      @HiveField(5)
      @JsonKey(name: 'preparation_minutes')
      int preparationMinutes,
      @HiveField(6) @JsonKey(name: 'start_picking_at') String startPickingAt,
      @HiveField(7)
      @JsonKey(name: 'order_details')
      List<OrderDetailsModel>? ordersDetails});
}

/// @nodoc
class __$$OOrderModelImplCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$OOrderModelImpl>
    implements _$$OOrderModelImplCopyWith<$Res> {
  __$$OOrderModelImplCopyWithImpl(
      _$OOrderModelImpl _value, $Res Function(_$OOrderModelImpl) _then)
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
  }) {
    return _then(_$OOrderModelImpl(
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
          ? _value._ordersDetails
          : ordersDetails // ignore: cast_nullable_to_non_nullable
              as List<OrderDetailsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1, adapterName: "OrderModelAdapter")
class _$OOrderModelImpl implements _OOrderModel {
  const _$OOrderModelImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.code,
      @HiveField(2) @JsonKey(name: 'total_items') required this.totalItems,
      @HiveField(3)
      @JsonKey(name: 'allow_replacement')
      required this.allowReplacement,
      @HiveField(4) required this.status,
      @HiveField(5)
      @JsonKey(name: 'preparation_minutes')
      required this.preparationMinutes,
      @HiveField(6)
      @JsonKey(name: 'start_picking_at')
      required this.startPickingAt,
      @HiveField(7)
      @JsonKey(name: 'order_details')
      final List<OrderDetailsModel>? ordersDetails})
      : _ordersDetails = ordersDetails;

  factory _$OOrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OOrderModelImplFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String code;
  @override
  @HiveField(2)
  @JsonKey(name: 'total_items')
  final int totalItems;
  @override
  @HiveField(3)
  @JsonKey(name: 'allow_replacement')
  final bool allowReplacement;
  @override
  @HiveField(4)
  final String status;
  @override
  @HiveField(5)
  @JsonKey(name: 'preparation_minutes')
  final int preparationMinutes;
  @override
  @HiveField(6)
  @JsonKey(name: 'start_picking_at')
  final String startPickingAt;
  final List<OrderDetailsModel>? _ordersDetails;
  @override
  @HiveField(7)
  @JsonKey(name: 'order_details')
  List<OrderDetailsModel>? get ordersDetails {
    final value = _ordersDetails;
    if (value == null) return null;
    if (_ordersDetails is EqualUnmodifiableListView) return _ordersDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrderModel(id: $id, code: $code, totalItems: $totalItems, allowReplacement: $allowReplacement, status: $status, preparationMinutes: $preparationMinutes, startPickingAt: $startPickingAt, ordersDetails: $ordersDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OOrderModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.allowReplacement, allowReplacement) ||
                other.allowReplacement == allowReplacement) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.preparationMinutes, preparationMinutes) ||
                other.preparationMinutes == preparationMinutes) &&
            (identical(other.startPickingAt, startPickingAt) ||
                other.startPickingAt == startPickingAt) &&
            const DeepCollectionEquality()
                .equals(other._ordersDetails, _ordersDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      code,
      totalItems,
      allowReplacement,
      status,
      preparationMinutes,
      startPickingAt,
      const DeepCollectionEquality().hash(_ordersDetails));

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OOrderModelImplCopyWith<_$OOrderModelImpl> get copyWith =>
      __$$OOrderModelImplCopyWithImpl<_$OOrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OOrderModelImplToJson(
      this,
    );
  }
}

abstract class _OOrderModel implements OrderModel {
  const factory _OOrderModel(
      {@HiveField(0) required final int id,
      @HiveField(1) required final String code,
      @HiveField(2) @JsonKey(name: 'total_items') required final int totalItems,
      @HiveField(3)
      @JsonKey(name: 'allow_replacement')
      required final bool allowReplacement,
      @HiveField(4) required final String status,
      @HiveField(5)
      @JsonKey(name: 'preparation_minutes')
      required final int preparationMinutes,
      @HiveField(6)
      @JsonKey(name: 'start_picking_at')
      required final String startPickingAt,
      @HiveField(7)
      @JsonKey(name: 'order_details')
      final List<OrderDetailsModel>? ordersDetails}) = _$OOrderModelImpl;

  factory _OOrderModel.fromJson(Map<String, dynamic> json) =
      _$OOrderModelImpl.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get code;
  @override
  @HiveField(2)
  @JsonKey(name: 'total_items')
  int get totalItems;
  @override
  @HiveField(3)
  @JsonKey(name: 'allow_replacement')
  bool get allowReplacement;
  @override
  @HiveField(4)
  String get status;
  @override
  @HiveField(5)
  @JsonKey(name: 'preparation_minutes')
  int get preparationMinutes;
  @override
  @HiveField(6)
  @JsonKey(name: 'start_picking_at')
  String get startPickingAt;
  @override
  @HiveField(7)
  @JsonKey(name: 'order_details')
  List<OrderDetailsModel>? get ordersDetails;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OOrderModelImplCopyWith<_$OOrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderDetailsModel _$OrderDetailsModelFromJson(Map<String, dynamic> json) {
  return _OrderDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailsModel {
  int get id => throw _privateConstructorUsedError;
  String get variation => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  ProductModel get product => throw _privateConstructorUsedError;

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
      ProductModel product});

  $ProductModelCopyWith<$Res> get product;
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
    Object? product = null,
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
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ) as $Val);
  }

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
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
      ProductModel product});

  @override
  $ProductModelCopyWith<$Res> get product;
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
    Object? product = null,
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
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDetailsModelImpl implements _OrderDetailsModel {
  const _$OrderDetailsModelImpl(
      {required this.id,
      required this.variation,
      required this.quantity,
      required this.price,
      required this.product});

  factory _$OrderDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDetailsModelImplFromJson(json);

  @override
  final int id;
  @override
  final String variation;
  @override
  final int quantity;
  @override
  final String price;
  @override
  final ProductModel product;

  @override
  String toString() {
    return 'OrderDetailsModel(id: $id, variation: $variation, quantity: $quantity, price: $price, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.variation, variation) ||
                other.variation == variation) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, variation, quantity, price, product);

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
  const factory _OrderDetailsModel(
      {required final int id,
      required final String variation,
      required final int quantity,
      required final String price,
      required final ProductModel product}) = _$OrderDetailsModelImpl;

  factory _OrderDetailsModel.fromJson(Map<String, dynamic> json) =
      _$OrderDetailsModelImpl.fromJson;

  @override
  int get id;
  @override
  String get variation;
  @override
  int get quantity;
  @override
  String get price;
  @override
  ProductModel get product;

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
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_image')
  String get thumbnailImage => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'thumbnail_image') String thumbnailImage});
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
    Object? thumbnailImage = null,
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
      thumbnailImage: null == thumbnailImage
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
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
      @JsonKey(name: 'thumbnail_image') String thumbnailImage});
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
    Object? thumbnailImage = null,
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
      thumbnailImage: null == thumbnailImage
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl implements _ProductModel {
  const _$ProductModelImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'thumbnail_image') required this.thumbnailImage});

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'thumbnail_image')
  final String thumbnailImage;

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, thumbnailImage: $thumbnailImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.thumbnailImage, thumbnailImage) ||
                other.thumbnailImage == thumbnailImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, thumbnailImage);

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
  const factory _ProductModel(
      {required final int id,
      required final String name,
      @JsonKey(name: 'thumbnail_image')
      required final String thumbnailImage}) = _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'thumbnail_image')
  String get thumbnailImage;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
