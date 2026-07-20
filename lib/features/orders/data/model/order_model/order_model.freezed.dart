// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

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
class _$OrdersListImpl with DiagnosticableTreeMixin implements _OrdersList {
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrdersList(assignedOrders: $assignedOrders, assignedOrdersCount: $assignedOrdersCount, newOrders: $newOrders)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrdersList'))
      ..add(DiagnosticsProperty('assignedOrders', assignedOrders))
      ..add(DiagnosticsProperty('assignedOrdersCount', assignedOrdersCount))
      ..add(DiagnosticsProperty('newOrders', newOrders));
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
  BaseOrderInfo get base => throw _privateConstructorUsedError;
  set base(BaseOrderInfo value) => throw _privateConstructorUsedError;
  LocalPickingFields get local => throw _privateConstructorUsedError;
  set local(LocalPickingFields value) => throw _privateConstructorUsedError;

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
  $Res call({BaseOrderInfo base, LocalPickingFields local});

  $BaseOrderInfoCopyWith<$Res> get base;
  $LocalPickingFieldsCopyWith<$Res> get local;
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
    Object? base = null,
    Object? local = null,
  }) {
    return _then(_value.copyWith(
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as BaseOrderInfo,
      local: null == local
          ? _value.local
          : local // ignore: cast_nullable_to_non_nullable
              as LocalPickingFields,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseOrderInfoCopyWith<$Res> get base {
    return $BaseOrderInfoCopyWith<$Res>(_value.base, (value) {
      return _then(_value.copyWith(base: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocalPickingFieldsCopyWith<$Res> get local {
    return $LocalPickingFieldsCopyWith<$Res>(_value.local, (value) {
      return _then(_value.copyWith(local: value) as $Val);
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
  $Res call({BaseOrderInfo base, LocalPickingFields local});

  @override
  $BaseOrderInfoCopyWith<$Res> get base;
  @override
  $LocalPickingFieldsCopyWith<$Res> get local;
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
    Object? base = null,
    Object? local = null,
  }) {
    return _then(_$OrderModelImpl(
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as BaseOrderInfo,
      local: null == local
          ? _value.local
          : local // ignore: cast_nullable_to_non_nullable
              as LocalPickingFields,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderModelImpl extends _OrderModel with DiagnosticableTreeMixin {
  _$OrderModelImpl({required this.base, required this.local}) : super._();

  factory _$OrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderModelImplFromJson(json);

  @override
  BaseOrderInfo base;
  @override
  LocalPickingFields local;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderModel(base: $base, local: $local)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderModel'))
      ..add(DiagnosticsProperty('base', base))
      ..add(DiagnosticsProperty('local', local));
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
      {required BaseOrderInfo base,
      required LocalPickingFields local}) = _$OrderModelImpl;
  _OrderModel._() : super._();

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$OrderModelImpl.fromJson;

  @override
  BaseOrderInfo get base;
  set base(BaseOrderInfo value);
  @override
  LocalPickingFields get local;
  set local(LocalPickingFields value);
  @override
  @JsonKey(ignore: true)
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
