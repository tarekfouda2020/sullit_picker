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

OrdersModel _$OrdersModelFromJson(Map<String, dynamic> json) {
  return _OrdersModel.fromJson(json);
}

/// @nodoc
mixin _$OrdersModel {
  @JsonKey(name: 'assigned_orders')
  List<OrderItem> get assignedOrders => throw _privateConstructorUsedError;
  @JsonKey(name: 'assigned_orders_count')
  int get assignedOrdersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_orders')
  List<OrderItem> get newOrders => throw _privateConstructorUsedError;

  /// Serializes this OrdersModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrdersModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrdersModelCopyWith<OrdersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersModelCopyWith<$Res> {
  factory $OrdersModelCopyWith(
          OrdersModel value, $Res Function(OrdersModel) then) =
      _$OrdersModelCopyWithImpl<$Res, OrdersModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'assigned_orders') List<OrderItem> assignedOrders,
      @JsonKey(name: 'assigned_orders_count') int assignedOrdersCount,
      @JsonKey(name: 'new_orders') List<OrderItem> newOrders});
}

/// @nodoc
class _$OrdersModelCopyWithImpl<$Res, $Val extends OrdersModel>
    implements $OrdersModelCopyWith<$Res> {
  _$OrdersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrdersModel
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
              as List<OrderItem>,
      assignedOrdersCount: null == assignedOrdersCount
          ? _value.assignedOrdersCount
          : assignedOrdersCount // ignore: cast_nullable_to_non_nullable
              as int,
      newOrders: null == newOrders
          ? _value.newOrders
          : newOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrdersModelImplCopyWith<$Res>
    implements $OrdersModelCopyWith<$Res> {
  factory _$$OrdersModelImplCopyWith(
          _$OrdersModelImpl value, $Res Function(_$OrdersModelImpl) then) =
      __$$OrdersModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'assigned_orders') List<OrderItem> assignedOrders,
      @JsonKey(name: 'assigned_orders_count') int assignedOrdersCount,
      @JsonKey(name: 'new_orders') List<OrderItem> newOrders});
}

/// @nodoc
class __$$OrdersModelImplCopyWithImpl<$Res>
    extends _$OrdersModelCopyWithImpl<$Res, _$OrdersModelImpl>
    implements _$$OrdersModelImplCopyWith<$Res> {
  __$$OrdersModelImplCopyWithImpl(
      _$OrdersModelImpl _value, $Res Function(_$OrdersModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignedOrders = null,
    Object? assignedOrdersCount = null,
    Object? newOrders = null,
  }) {
    return _then(_$OrdersModelImpl(
      assignedOrders: null == assignedOrders
          ? _value._assignedOrders
          : assignedOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      assignedOrdersCount: null == assignedOrdersCount
          ? _value.assignedOrdersCount
          : assignedOrdersCount // ignore: cast_nullable_to_non_nullable
              as int,
      newOrders: null == newOrders
          ? _value._newOrders
          : newOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrdersModelImpl implements _OrdersModel {
  const _$OrdersModelImpl(
      {@JsonKey(name: 'assigned_orders')
      required final List<OrderItem> assignedOrders,
      @JsonKey(name: 'assigned_orders_count') required this.assignedOrdersCount,
      @JsonKey(name: 'new_orders') required final List<OrderItem> newOrders})
      : _assignedOrders = assignedOrders,
        _newOrders = newOrders;

  factory _$OrdersModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersModelImplFromJson(json);

  final List<OrderItem> _assignedOrders;
  @override
  @JsonKey(name: 'assigned_orders')
  List<OrderItem> get assignedOrders {
    if (_assignedOrders is EqualUnmodifiableListView) return _assignedOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assignedOrders);
  }

  @override
  @JsonKey(name: 'assigned_orders_count')
  final int assignedOrdersCount;
  final List<OrderItem> _newOrders;
  @override
  @JsonKey(name: 'new_orders')
  List<OrderItem> get newOrders {
    if (_newOrders is EqualUnmodifiableListView) return _newOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newOrders);
  }

  @override
  String toString() {
    return 'OrdersModel(assignedOrders: $assignedOrders, assignedOrdersCount: $assignedOrdersCount, newOrders: $newOrders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersModelImpl &&
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

  /// Create a copy of OrdersModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersModelImplCopyWith<_$OrdersModelImpl> get copyWith =>
      __$$OrdersModelImplCopyWithImpl<_$OrdersModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrdersModelImplToJson(
      this,
    );
  }
}

abstract class _OrdersModel implements OrdersModel {
  const factory _OrdersModel(
      {@JsonKey(name: 'assigned_orders')
      required final List<OrderItem> assignedOrders,
      @JsonKey(name: 'assigned_orders_count')
      required final int assignedOrdersCount,
      @JsonKey(name: 'new_orders')
      required final List<OrderItem> newOrders}) = _$OrdersModelImpl;

  factory _OrdersModel.fromJson(Map<String, dynamic> json) =
      _$OrdersModelImpl.fromJson;

  @override
  @JsonKey(name: 'assigned_orders')
  List<OrderItem> get assignedOrders;
  @override
  @JsonKey(name: 'assigned_orders_count')
  int get assignedOrdersCount;
  @override
  @JsonKey(name: 'new_orders')
  List<OrderItem> get newOrders;

  /// Create a copy of OrdersModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrdersModelImplCopyWith<_$OrdersModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) {
  return _OrderItem.fromJson(json);
}

/// @nodoc
mixin _$OrderItem {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_items')
  int get totalItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'allow_replacement')
  bool get allowReplacement => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'preparation_minutes')
  int get preparationMinutes => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_picking_at')
  String get startPickingAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_details')
  List<OrderDetailsModel>? get ordersDetails =>
      throw _privateConstructorUsedError;

  /// Serializes this OrderItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemCopyWith<OrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemCopyWith<$Res> {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) then) =
      _$OrderItemCopyWithImpl<$Res, OrderItem>;
  @useResult
  $Res call(
      {int id,
      String code,
      @JsonKey(name: 'total_items') int totalItems,
      @JsonKey(name: 'allow_replacement') bool allowReplacement,
      String status,
      @JsonKey(name: 'preparation_minutes') int preparationMinutes,
      @JsonKey(name: 'start_picking_at') String startPickingAt,
      @JsonKey(name: 'order_details') List<OrderDetailsModel>? ordersDetails});
}

/// @nodoc
class _$OrderItemCopyWithImpl<$Res, $Val extends OrderItem>
    implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItem
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
abstract class _$$OrderItemImplCopyWith<$Res>
    implements $OrderItemCopyWith<$Res> {
  factory _$$OrderItemImplCopyWith(
          _$OrderItemImpl value, $Res Function(_$OrderItemImpl) then) =
      __$$OrderItemImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'order_details') List<OrderDetailsModel>? ordersDetails});
}

/// @nodoc
class __$$OrderItemImplCopyWithImpl<$Res>
    extends _$OrderItemCopyWithImpl<$Res, _$OrderItemImpl>
    implements _$$OrderItemImplCopyWith<$Res> {
  __$$OrderItemImplCopyWithImpl(
      _$OrderItemImpl _value, $Res Function(_$OrderItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderItem
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
    return _then(_$OrderItemImpl(
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
class _$OrderItemImpl implements _OrderItem {
  const _$OrderItemImpl(
      {required this.id,
      required this.code,
      @JsonKey(name: 'total_items') required this.totalItems,
      @JsonKey(name: 'allow_replacement') required this.allowReplacement,
      required this.status,
      @JsonKey(name: 'preparation_minutes') required this.preparationMinutes,
      @JsonKey(name: 'start_picking_at') required this.startPickingAt,
      @JsonKey(name: 'order_details')
      final List<OrderDetailsModel>? ordersDetails})
      : _ordersDetails = ordersDetails;

  factory _$OrderItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemImplFromJson(json);

  @override
  final int id;
  @override
  final String code;
  @override
  @JsonKey(name: 'total_items')
  final int totalItems;
  @override
  @JsonKey(name: 'allow_replacement')
  final bool allowReplacement;
  @override
  final String status;
  @override
  @JsonKey(name: 'preparation_minutes')
  final int preparationMinutes;
  @override
  @JsonKey(name: 'start_picking_at')
  final String startPickingAt;
  final List<OrderDetailsModel>? _ordersDetails;
  @override
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
    return 'OrderItem(id: $id, code: $code, totalItems: $totalItems, allowReplacement: $allowReplacement, status: $status, preparationMinutes: $preparationMinutes, startPickingAt: $startPickingAt, ordersDetails: $ordersDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemImpl &&
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

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      __$$OrderItemImplCopyWithImpl<_$OrderItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemImplToJson(
      this,
    );
  }
}

abstract class _OrderItem implements OrderItem {
  const factory _OrderItem(
      {required final int id,
      required final String code,
      @JsonKey(name: 'total_items') required final int totalItems,
      @JsonKey(name: 'allow_replacement') required final bool allowReplacement,
      required final String status,
      @JsonKey(name: 'preparation_minutes')
      required final int preparationMinutes,
      @JsonKey(name: 'start_picking_at') required final String startPickingAt,
      @JsonKey(name: 'order_details')
      final List<OrderDetailsModel>? ordersDetails}) = _$OrderItemImpl;

  factory _OrderItem.fromJson(Map<String, dynamic> json) =
      _$OrderItemImpl.fromJson;

  @override
  int get id;
  @override
  String get code;
  @override
  @JsonKey(name: 'total_items')
  int get totalItems;
  @override
  @JsonKey(name: 'allow_replacement')
  bool get allowReplacement;
  @override
  String get status;
  @override
  @JsonKey(name: 'preparation_minutes')
  int get preparationMinutes;
  @override
  @JsonKey(name: 'start_picking_at')
  String get startPickingAt;
  @override
  @JsonKey(name: 'order_details')
  List<OrderDetailsModel>? get ordersDetails;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
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
