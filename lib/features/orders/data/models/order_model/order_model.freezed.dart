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

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_name')
  String get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_phone')
  String get customerPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  String get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method_label')
  String get paymentMethodLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status')
  String get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status_label')
  String get paymentStatusLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_amount')
  String get orderAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_label')
  String get statusLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'reciving_from')
  String get recivingFrom => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_amount')
  String get driverAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'distance_km')
  int get distanceKm => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivered_at')
  String get deliveredAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'assigned_at')
  String get assignedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'report_reason')
  String get reportReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'store_disctance')
  String? get storeDistance => throw _privateConstructorUsedError;

  /// last three keys be nullable  when calling the orders history api
  @JsonKey(name: 'customer_address')
  CustomerAddress? get customerAddress => throw _privateConstructorUsedError;
  List<OrderHistoryModel>? get histories => throw _privateConstructorUsedError;
  OrderStoreModel? get store => throw _privateConstructorUsedError;

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
      String status,
      @JsonKey(name: 'customer_name') String customerName,
      @JsonKey(name: 'customer_phone') String customerPhone,
      @JsonKey(name: 'payment_method') String paymentMethod,
      @JsonKey(name: 'payment_method_label') String paymentMethodLabel,
      @JsonKey(name: 'payment_status') String paymentStatus,
      @JsonKey(name: 'payment_status_label') String paymentStatusLabel,
      @JsonKey(name: 'order_amount') String orderAmount,
      @JsonKey(name: 'status_label') String statusLabel,
      @JsonKey(name: 'reciving_from') String recivingFrom,
      @JsonKey(name: 'driver_amount') String driverAmount,
      @JsonKey(name: 'distance_km') int distanceKm,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'delivered_at') String deliveredAt,
      @JsonKey(name: 'assigned_at') String assignedAt,
      @JsonKey(name: 'report_reason') String reportReason,
      @JsonKey(name: 'store_disctance') String? storeDistance,
      @JsonKey(name: 'customer_address') CustomerAddress? customerAddress,
      List<OrderHistoryModel>? histories,
      OrderStoreModel? store});

  $CustomerAddressCopyWith<$Res>? get customerAddress;
  $OrderStoreModelCopyWith<$Res>? get store;
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
    Object? status = null,
    Object? customerName = null,
    Object? customerPhone = null,
    Object? paymentMethod = null,
    Object? paymentMethodLabel = null,
    Object? paymentStatus = null,
    Object? paymentStatusLabel = null,
    Object? orderAmount = null,
    Object? statusLabel = null,
    Object? recivingFrom = null,
    Object? driverAmount = null,
    Object? distanceKm = null,
    Object? createdAt = null,
    Object? deliveredAt = null,
    Object? assignedAt = null,
    Object? reportReason = null,
    Object? storeDistance = freezed,
    Object? customerAddress = freezed,
    Object? histories = freezed,
    Object? store = freezed,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerPhone: null == customerPhone
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodLabel: null == paymentMethodLabel
          ? _value.paymentMethodLabel
          : paymentMethodLabel // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatusLabel: null == paymentStatusLabel
          ? _value.paymentStatusLabel
          : paymentStatusLabel // ignore: cast_nullable_to_non_nullable
              as String,
      orderAmount: null == orderAmount
          ? _value.orderAmount
          : orderAmount // ignore: cast_nullable_to_non_nullable
              as String,
      statusLabel: null == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String,
      recivingFrom: null == recivingFrom
          ? _value.recivingFrom
          : recivingFrom // ignore: cast_nullable_to_non_nullable
              as String,
      driverAmount: null == driverAmount
          ? _value.driverAmount
          : driverAmount // ignore: cast_nullable_to_non_nullable
              as String,
      distanceKm: null == distanceKm
          ? _value.distanceKm
          : distanceKm // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      deliveredAt: null == deliveredAt
          ? _value.deliveredAt
          : deliveredAt // ignore: cast_nullable_to_non_nullable
              as String,
      assignedAt: null == assignedAt
          ? _value.assignedAt
          : assignedAt // ignore: cast_nullable_to_non_nullable
              as String,
      reportReason: null == reportReason
          ? _value.reportReason
          : reportReason // ignore: cast_nullable_to_non_nullable
              as String,
      storeDistance: freezed == storeDistance
          ? _value.storeDistance
          : storeDistance // ignore: cast_nullable_to_non_nullable
              as String?,
      customerAddress: freezed == customerAddress
          ? _value.customerAddress
          : customerAddress // ignore: cast_nullable_to_non_nullable
              as CustomerAddress?,
      histories: freezed == histories
          ? _value.histories
          : histories // ignore: cast_nullable_to_non_nullable
              as List<OrderHistoryModel>?,
      store: freezed == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as OrderStoreModel?,
    ) as $Val);
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerAddressCopyWith<$Res>? get customerAddress {
    if (_value.customerAddress == null) {
      return null;
    }

    return $CustomerAddressCopyWith<$Res>(_value.customerAddress!, (value) {
      return _then(_value.copyWith(customerAddress: value) as $Val);
    });
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderStoreModelCopyWith<$Res>? get store {
    if (_value.store == null) {
      return null;
    }

    return $OrderStoreModelCopyWith<$Res>(_value.store!, (value) {
      return _then(_value.copyWith(store: value) as $Val);
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
      String code,
      String status,
      @JsonKey(name: 'customer_name') String customerName,
      @JsonKey(name: 'customer_phone') String customerPhone,
      @JsonKey(name: 'payment_method') String paymentMethod,
      @JsonKey(name: 'payment_method_label') String paymentMethodLabel,
      @JsonKey(name: 'payment_status') String paymentStatus,
      @JsonKey(name: 'payment_status_label') String paymentStatusLabel,
      @JsonKey(name: 'order_amount') String orderAmount,
      @JsonKey(name: 'status_label') String statusLabel,
      @JsonKey(name: 'reciving_from') String recivingFrom,
      @JsonKey(name: 'driver_amount') String driverAmount,
      @JsonKey(name: 'distance_km') int distanceKm,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'delivered_at') String deliveredAt,
      @JsonKey(name: 'assigned_at') String assignedAt,
      @JsonKey(name: 'report_reason') String reportReason,
      @JsonKey(name: 'store_disctance') String? storeDistance,
      @JsonKey(name: 'customer_address') CustomerAddress? customerAddress,
      List<OrderHistoryModel>? histories,
      OrderStoreModel? store});

  @override
  $CustomerAddressCopyWith<$Res>? get customerAddress;
  @override
  $OrderStoreModelCopyWith<$Res>? get store;
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
    Object? status = null,
    Object? customerName = null,
    Object? customerPhone = null,
    Object? paymentMethod = null,
    Object? paymentMethodLabel = null,
    Object? paymentStatus = null,
    Object? paymentStatusLabel = null,
    Object? orderAmount = null,
    Object? statusLabel = null,
    Object? recivingFrom = null,
    Object? driverAmount = null,
    Object? distanceKm = null,
    Object? createdAt = null,
    Object? deliveredAt = null,
    Object? assignedAt = null,
    Object? reportReason = null,
    Object? storeDistance = freezed,
    Object? customerAddress = freezed,
    Object? histories = freezed,
    Object? store = freezed,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerPhone: null == customerPhone
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodLabel: null == paymentMethodLabel
          ? _value.paymentMethodLabel
          : paymentMethodLabel // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatusLabel: null == paymentStatusLabel
          ? _value.paymentStatusLabel
          : paymentStatusLabel // ignore: cast_nullable_to_non_nullable
              as String,
      orderAmount: null == orderAmount
          ? _value.orderAmount
          : orderAmount // ignore: cast_nullable_to_non_nullable
              as String,
      statusLabel: null == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String,
      recivingFrom: null == recivingFrom
          ? _value.recivingFrom
          : recivingFrom // ignore: cast_nullable_to_non_nullable
              as String,
      driverAmount: null == driverAmount
          ? _value.driverAmount
          : driverAmount // ignore: cast_nullable_to_non_nullable
              as String,
      distanceKm: null == distanceKm
          ? _value.distanceKm
          : distanceKm // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      deliveredAt: null == deliveredAt
          ? _value.deliveredAt
          : deliveredAt // ignore: cast_nullable_to_non_nullable
              as String,
      assignedAt: null == assignedAt
          ? _value.assignedAt
          : assignedAt // ignore: cast_nullable_to_non_nullable
              as String,
      reportReason: null == reportReason
          ? _value.reportReason
          : reportReason // ignore: cast_nullable_to_non_nullable
              as String,
      storeDistance: freezed == storeDistance
          ? _value.storeDistance
          : storeDistance // ignore: cast_nullable_to_non_nullable
              as String?,
      customerAddress: freezed == customerAddress
          ? _value.customerAddress
          : customerAddress // ignore: cast_nullable_to_non_nullable
              as CustomerAddress?,
      histories: freezed == histories
          ? _value._histories
          : histories // ignore: cast_nullable_to_non_nullable
              as List<OrderHistoryModel>?,
      store: freezed == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as OrderStoreModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderModelImpl extends _OrderModel {
  _$OrderModelImpl(
      {required this.id,
      required this.code,
      required this.status,
      @JsonKey(name: 'customer_name') required this.customerName,
      @JsonKey(name: 'customer_phone') required this.customerPhone,
      @JsonKey(name: 'payment_method') required this.paymentMethod,
      @JsonKey(name: 'payment_method_label') required this.paymentMethodLabel,
      @JsonKey(name: 'payment_status') required this.paymentStatus,
      @JsonKey(name: 'payment_status_label') required this.paymentStatusLabel,
      @JsonKey(name: 'order_amount') required this.orderAmount,
      @JsonKey(name: 'status_label') required this.statusLabel,
      @JsonKey(name: 'reciving_from') required this.recivingFrom,
      @JsonKey(name: 'driver_amount') required this.driverAmount,
      @JsonKey(name: 'distance_km') required this.distanceKm,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'delivered_at') required this.deliveredAt,
      @JsonKey(name: 'assigned_at') required this.assignedAt,
      @JsonKey(name: 'report_reason') required this.reportReason,
      @JsonKey(name: 'store_disctance') this.storeDistance,
      @JsonKey(name: 'customer_address') this.customerAddress,
      required final List<OrderHistoryModel>? histories,
      required this.store})
      : _histories = histories,
        super._();

  factory _$OrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderModelImplFromJson(json);

  @override
  final int id;
  @override
  final String code;
  @override
  final String status;
  @override
  @JsonKey(name: 'customer_name')
  final String customerName;
  @override
  @JsonKey(name: 'customer_phone')
  final String customerPhone;
  @override
  @JsonKey(name: 'payment_method')
  final String paymentMethod;
  @override
  @JsonKey(name: 'payment_method_label')
  final String paymentMethodLabel;
  @override
  @JsonKey(name: 'payment_status')
  final String paymentStatus;
  @override
  @JsonKey(name: 'payment_status_label')
  final String paymentStatusLabel;
  @override
  @JsonKey(name: 'order_amount')
  final String orderAmount;
  @override
  @JsonKey(name: 'status_label')
  final String statusLabel;
  @override
  @JsonKey(name: 'reciving_from')
  final String recivingFrom;
  @override
  @JsonKey(name: 'driver_amount')
  final String driverAmount;
  @override
  @JsonKey(name: 'distance_km')
  final int distanceKm;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'delivered_at')
  final String deliveredAt;
  @override
  @JsonKey(name: 'assigned_at')
  final String assignedAt;
  @override
  @JsonKey(name: 'report_reason')
  final String reportReason;
  @override
  @JsonKey(name: 'store_disctance')
  final String? storeDistance;

  /// last three keys be nullable  when calling the orders history api
  @override
  @JsonKey(name: 'customer_address')
  final CustomerAddress? customerAddress;
  final List<OrderHistoryModel>? _histories;
  @override
  List<OrderHistoryModel>? get histories {
    final value = _histories;
    if (value == null) return null;
    if (_histories is EqualUnmodifiableListView) return _histories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final OrderStoreModel? store;

  @override
  String toString() {
    return 'OrderModel(id: $id, code: $code, status: $status, customerName: $customerName, customerPhone: $customerPhone, paymentMethod: $paymentMethod, paymentMethodLabel: $paymentMethodLabel, paymentStatus: $paymentStatus, paymentStatusLabel: $paymentStatusLabel, orderAmount: $orderAmount, statusLabel: $statusLabel, recivingFrom: $recivingFrom, driverAmount: $driverAmount, distanceKm: $distanceKm, createdAt: $createdAt, deliveredAt: $deliveredAt, assignedAt: $assignedAt, reportReason: $reportReason, storeDistance: $storeDistance, customerAddress: $customerAddress, histories: $histories, store: $store)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerPhone, customerPhone) ||
                other.customerPhone == customerPhone) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.paymentMethodLabel, paymentMethodLabel) ||
                other.paymentMethodLabel == paymentMethodLabel) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.paymentStatusLabel, paymentStatusLabel) ||
                other.paymentStatusLabel == paymentStatusLabel) &&
            (identical(other.orderAmount, orderAmount) ||
                other.orderAmount == orderAmount) &&
            (identical(other.statusLabel, statusLabel) ||
                other.statusLabel == statusLabel) &&
            (identical(other.recivingFrom, recivingFrom) ||
                other.recivingFrom == recivingFrom) &&
            (identical(other.driverAmount, driverAmount) ||
                other.driverAmount == driverAmount) &&
            (identical(other.distanceKm, distanceKm) ||
                other.distanceKm == distanceKm) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.deliveredAt, deliveredAt) ||
                other.deliveredAt == deliveredAt) &&
            (identical(other.assignedAt, assignedAt) ||
                other.assignedAt == assignedAt) &&
            (identical(other.reportReason, reportReason) ||
                other.reportReason == reportReason) &&
            (identical(other.storeDistance, storeDistance) ||
                other.storeDistance == storeDistance) &&
            (identical(other.customerAddress, customerAddress) ||
                other.customerAddress == customerAddress) &&
            const DeepCollectionEquality()
                .equals(other._histories, _histories) &&
            (identical(other.store, store) || other.store == store));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        code,
        status,
        customerName,
        customerPhone,
        paymentMethod,
        paymentMethodLabel,
        paymentStatus,
        paymentStatusLabel,
        orderAmount,
        statusLabel,
        recivingFrom,
        driverAmount,
        distanceKm,
        createdAt,
        deliveredAt,
        assignedAt,
        reportReason,
        storeDistance,
        customerAddress,
        const DeepCollectionEquality().hash(_histories),
        store
      ]);

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
      {required final int id,
      required final String code,
      required final String status,
      @JsonKey(name: 'customer_name') required final String customerName,
      @JsonKey(name: 'customer_phone') required final String customerPhone,
      @JsonKey(name: 'payment_method') required final String paymentMethod,
      @JsonKey(name: 'payment_method_label')
      required final String paymentMethodLabel,
      @JsonKey(name: 'payment_status') required final String paymentStatus,
      @JsonKey(name: 'payment_status_label')
      required final String paymentStatusLabel,
      @JsonKey(name: 'order_amount') required final String orderAmount,
      @JsonKey(name: 'status_label') required final String statusLabel,
      @JsonKey(name: 'reciving_from') required final String recivingFrom,
      @JsonKey(name: 'driver_amount') required final String driverAmount,
      @JsonKey(name: 'distance_km') required final int distanceKm,
      @JsonKey(name: 'created_at') required final String createdAt,
      @JsonKey(name: 'delivered_at') required final String deliveredAt,
      @JsonKey(name: 'assigned_at') required final String assignedAt,
      @JsonKey(name: 'report_reason') required final String reportReason,
      @JsonKey(name: 'store_disctance') final String? storeDistance,
      @JsonKey(name: 'customer_address') final CustomerAddress? customerAddress,
      required final List<OrderHistoryModel>? histories,
      required final OrderStoreModel? store}) = _$OrderModelImpl;
  _OrderModel._() : super._();

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$OrderModelImpl.fromJson;

  @override
  int get id;
  @override
  String get code;
  @override
  String get status;
  @override
  @JsonKey(name: 'customer_name')
  String get customerName;
  @override
  @JsonKey(name: 'customer_phone')
  String get customerPhone;
  @override
  @JsonKey(name: 'payment_method')
  String get paymentMethod;
  @override
  @JsonKey(name: 'payment_method_label')
  String get paymentMethodLabel;
  @override
  @JsonKey(name: 'payment_status')
  String get paymentStatus;
  @override
  @JsonKey(name: 'payment_status_label')
  String get paymentStatusLabel;
  @override
  @JsonKey(name: 'order_amount')
  String get orderAmount;
  @override
  @JsonKey(name: 'status_label')
  String get statusLabel;
  @override
  @JsonKey(name: 'reciving_from')
  String get recivingFrom;
  @override
  @JsonKey(name: 'driver_amount')
  String get driverAmount;
  @override
  @JsonKey(name: 'distance_km')
  int get distanceKm;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'delivered_at')
  String get deliveredAt;
  @override
  @JsonKey(name: 'assigned_at')
  String get assignedAt;
  @override
  @JsonKey(name: 'report_reason')
  String get reportReason;
  @override
  @JsonKey(name: 'store_disctance')
  String? get storeDistance;

  /// last three keys be nullable  when calling the orders history api
  @override
  @JsonKey(name: 'customer_address')
  CustomerAddress? get customerAddress;
  @override
  List<OrderHistoryModel>? get histories;
  @override
  OrderStoreModel? get store;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomerAddress _$CustomerAddressFromJson(Map<String, dynamic> json) {
  return _CustomerAddress.fromJson(json);
}

/// @nodoc
mixin _$CustomerAddress {
  @JsonKey(name: 'address_details')
  String get addressDetails => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'street_name')
  String get streetName => throw _privateConstructorUsedError;
  @JsonKey(name: 'building_name')
  String get buildingName => throw _privateConstructorUsedError;
  @JsonKey(name: 'flat_no')
  String get flatNo => throw _privateConstructorUsedError;
  String get lat => throw _privateConstructorUsedError;
  String get lng => throw _privateConstructorUsedError;
  @JsonKey(name: 'map_desc')
  String get mapDesc => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;

  /// Serializes this CustomerAddress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerAddressCopyWith<CustomerAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerAddressCopyWith<$Res> {
  factory $CustomerAddressCopyWith(
          CustomerAddress value, $Res Function(CustomerAddress) then) =
      _$CustomerAddressCopyWithImpl<$Res, CustomerAddress>;
  @useResult
  $Res call(
      {@JsonKey(name: 'address_details') String addressDetails,
      String state,
      String city,
      @JsonKey(name: 'street_name') String streetName,
      @JsonKey(name: 'building_name') String buildingName,
      @JsonKey(name: 'flat_no') String flatNo,
      String lat,
      String lng,
      @JsonKey(name: 'map_desc') String mapDesc,
      String phone});
}

/// @nodoc
class _$CustomerAddressCopyWithImpl<$Res, $Val extends CustomerAddress>
    implements $CustomerAddressCopyWith<$Res> {
  _$CustomerAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressDetails = null,
    Object? state = null,
    Object? city = null,
    Object? streetName = null,
    Object? buildingName = null,
    Object? flatNo = null,
    Object? lat = null,
    Object? lng = null,
    Object? mapDesc = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      addressDetails: null == addressDetails
          ? _value.addressDetails
          : addressDetails // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      streetName: null == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String,
      buildingName: null == buildingName
          ? _value.buildingName
          : buildingName // ignore: cast_nullable_to_non_nullable
              as String,
      flatNo: null == flatNo
          ? _value.flatNo
          : flatNo // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
      mapDesc: null == mapDesc
          ? _value.mapDesc
          : mapDesc // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerAddressImplCopyWith<$Res>
    implements $CustomerAddressCopyWith<$Res> {
  factory _$$CustomerAddressImplCopyWith(_$CustomerAddressImpl value,
          $Res Function(_$CustomerAddressImpl) then) =
      __$$CustomerAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'address_details') String addressDetails,
      String state,
      String city,
      @JsonKey(name: 'street_name') String streetName,
      @JsonKey(name: 'building_name') String buildingName,
      @JsonKey(name: 'flat_no') String flatNo,
      String lat,
      String lng,
      @JsonKey(name: 'map_desc') String mapDesc,
      String phone});
}

/// @nodoc
class __$$CustomerAddressImplCopyWithImpl<$Res>
    extends _$CustomerAddressCopyWithImpl<$Res, _$CustomerAddressImpl>
    implements _$$CustomerAddressImplCopyWith<$Res> {
  __$$CustomerAddressImplCopyWithImpl(
      _$CustomerAddressImpl _value, $Res Function(_$CustomerAddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressDetails = null,
    Object? state = null,
    Object? city = null,
    Object? streetName = null,
    Object? buildingName = null,
    Object? flatNo = null,
    Object? lat = null,
    Object? lng = null,
    Object? mapDesc = null,
    Object? phone = null,
  }) {
    return _then(_$CustomerAddressImpl(
      addressDetails: null == addressDetails
          ? _value.addressDetails
          : addressDetails // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      streetName: null == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String,
      buildingName: null == buildingName
          ? _value.buildingName
          : buildingName // ignore: cast_nullable_to_non_nullable
              as String,
      flatNo: null == flatNo
          ? _value.flatNo
          : flatNo // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
      mapDesc: null == mapDesc
          ? _value.mapDesc
          : mapDesc // ignore: cast_nullable_to_non_nullable
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
class _$CustomerAddressImpl implements _CustomerAddress {
  const _$CustomerAddressImpl(
      {@JsonKey(name: 'address_details') required this.addressDetails,
      required this.state,
      required this.city,
      @JsonKey(name: 'street_name') required this.streetName,
      @JsonKey(name: 'building_name') required this.buildingName,
      @JsonKey(name: 'flat_no') required this.flatNo,
      required this.lat,
      required this.lng,
      @JsonKey(name: 'map_desc') required this.mapDesc,
      required this.phone});

  factory _$CustomerAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerAddressImplFromJson(json);

  @override
  @JsonKey(name: 'address_details')
  final String addressDetails;
  @override
  final String state;
  @override
  final String city;
  @override
  @JsonKey(name: 'street_name')
  final String streetName;
  @override
  @JsonKey(name: 'building_name')
  final String buildingName;
  @override
  @JsonKey(name: 'flat_no')
  final String flatNo;
  @override
  final String lat;
  @override
  final String lng;
  @override
  @JsonKey(name: 'map_desc')
  final String mapDesc;
  @override
  final String phone;

  @override
  String toString() {
    return 'CustomerAddress(addressDetails: $addressDetails, state: $state, city: $city, streetName: $streetName, buildingName: $buildingName, flatNo: $flatNo, lat: $lat, lng: $lng, mapDesc: $mapDesc, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerAddressImpl &&
            (identical(other.addressDetails, addressDetails) ||
                other.addressDetails == addressDetails) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.streetName, streetName) ||
                other.streetName == streetName) &&
            (identical(other.buildingName, buildingName) ||
                other.buildingName == buildingName) &&
            (identical(other.flatNo, flatNo) || other.flatNo == flatNo) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.mapDesc, mapDesc) || other.mapDesc == mapDesc) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, addressDetails, state, city,
      streetName, buildingName, flatNo, lat, lng, mapDesc, phone);

  /// Create a copy of CustomerAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerAddressImplCopyWith<_$CustomerAddressImpl> get copyWith =>
      __$$CustomerAddressImplCopyWithImpl<_$CustomerAddressImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerAddressImplToJson(
      this,
    );
  }
}

abstract class _CustomerAddress implements CustomerAddress {
  const factory _CustomerAddress(
      {@JsonKey(name: 'address_details') required final String addressDetails,
      required final String state,
      required final String city,
      @JsonKey(name: 'street_name') required final String streetName,
      @JsonKey(name: 'building_name') required final String buildingName,
      @JsonKey(name: 'flat_no') required final String flatNo,
      required final String lat,
      required final String lng,
      @JsonKey(name: 'map_desc') required final String mapDesc,
      required final String phone}) = _$CustomerAddressImpl;

  factory _CustomerAddress.fromJson(Map<String, dynamic> json) =
      _$CustomerAddressImpl.fromJson;

  @override
  @JsonKey(name: 'address_details')
  String get addressDetails;
  @override
  String get state;
  @override
  String get city;
  @override
  @JsonKey(name: 'street_name')
  String get streetName;
  @override
  @JsonKey(name: 'building_name')
  String get buildingName;
  @override
  @JsonKey(name: 'flat_no')
  String get flatNo;
  @override
  String get lat;
  @override
  String get lng;
  @override
  @JsonKey(name: 'map_desc')
  String get mapDesc;
  @override
  String get phone;

  /// Create a copy of CustomerAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerAddressImplCopyWith<_$CustomerAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderHistoryModel _$OrderHistoryModelFromJson(Map<String, dynamic> json) {
  return _OrderHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$OrderHistoryModel {
  int get id => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_label')
  String get statusLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this OrderHistoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderHistoryModelCopyWith<OrderHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderHistoryModelCopyWith<$Res> {
  factory $OrderHistoryModelCopyWith(
          OrderHistoryModel value, $Res Function(OrderHistoryModel) then) =
      _$OrderHistoryModelCopyWithImpl<$Res, OrderHistoryModel>;
  @useResult
  $Res call(
      {int id,
      String status,
      @JsonKey(name: 'status_label') String statusLabel,
      @JsonKey(name: 'created_at') String createdAt});
}

/// @nodoc
class _$OrderHistoryModelCopyWithImpl<$Res, $Val extends OrderHistoryModel>
    implements $OrderHistoryModelCopyWith<$Res> {
  _$OrderHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? statusLabel = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      statusLabel: null == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderHistoryModelImplCopyWith<$Res>
    implements $OrderHistoryModelCopyWith<$Res> {
  factory _$$OrderHistoryModelImplCopyWith(_$OrderHistoryModelImpl value,
          $Res Function(_$OrderHistoryModelImpl) then) =
      __$$OrderHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String status,
      @JsonKey(name: 'status_label') String statusLabel,
      @JsonKey(name: 'created_at') String createdAt});
}

/// @nodoc
class __$$OrderHistoryModelImplCopyWithImpl<$Res>
    extends _$OrderHistoryModelCopyWithImpl<$Res, _$OrderHistoryModelImpl>
    implements _$$OrderHistoryModelImplCopyWith<$Res> {
  __$$OrderHistoryModelImplCopyWithImpl(_$OrderHistoryModelImpl _value,
      $Res Function(_$OrderHistoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? statusLabel = null,
    Object? createdAt = null,
  }) {
    return _then(_$OrderHistoryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      statusLabel: null == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderHistoryModelImpl extends _OrderHistoryModel {
  const _$OrderHistoryModelImpl(
      {required this.id,
      required this.status,
      @JsonKey(name: 'status_label') required this.statusLabel,
      @JsonKey(name: 'created_at') required this.createdAt})
      : super._();

  factory _$OrderHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderHistoryModelImplFromJson(json);

  @override
  final int id;
  @override
  final String status;
  @override
  @JsonKey(name: 'status_label')
  final String statusLabel;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;

  @override
  String toString() {
    return 'OrderHistoryModel(id: $id, status: $status, statusLabel: $statusLabel, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderHistoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusLabel, statusLabel) ||
                other.statusLabel == statusLabel) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, status, statusLabel, createdAt);

  /// Create a copy of OrderHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderHistoryModelImplCopyWith<_$OrderHistoryModelImpl> get copyWith =>
      __$$OrderHistoryModelImplCopyWithImpl<_$OrderHistoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _OrderHistoryModel extends OrderHistoryModel {
  const factory _OrderHistoryModel(
          {required final int id,
          required final String status,
          @JsonKey(name: 'status_label') required final String statusLabel,
          @JsonKey(name: 'created_at') required final String createdAt}) =
      _$OrderHistoryModelImpl;
  const _OrderHistoryModel._() : super._();

  factory _OrderHistoryModel.fromJson(Map<String, dynamic> json) =
      _$OrderHistoryModelImpl.fromJson;

  @override
  int get id;
  @override
  String get status;
  @override
  @JsonKey(name: 'status_label')
  String get statusLabel;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;

  /// Create a copy of OrderHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderHistoryModelImplCopyWith<_$OrderHistoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderStoreModel _$OrderStoreModelFromJson(Map<String, dynamic> json) {
  return _OrderStoreModel.fromJson(json);
}

/// @nodoc
mixin _$OrderStoreModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'store_name')
  String get storeName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get lat => throw _privateConstructorUsedError;
  String get lng => throw _privateConstructorUsedError;

  /// Serializes this OrderStoreModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderStoreModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderStoreModelCopyWith<OrderStoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStoreModelCopyWith<$Res> {
  factory $OrderStoreModelCopyWith(
          OrderStoreModel value, $Res Function(OrderStoreModel) then) =
      _$OrderStoreModelCopyWithImpl<$Res, OrderStoreModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'store_name') String storeName,
      String email,
      String lat,
      String lng});
}

/// @nodoc
class _$OrderStoreModelCopyWithImpl<$Res, $Val extends OrderStoreModel>
    implements $OrderStoreModelCopyWith<$Res> {
  _$OrderStoreModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderStoreModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? storeName = null,
    Object? email = null,
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      storeName: null == storeName
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderStoreModelImplCopyWith<$Res>
    implements $OrderStoreModelCopyWith<$Res> {
  factory _$$OrderStoreModelImplCopyWith(_$OrderStoreModelImpl value,
          $Res Function(_$OrderStoreModelImpl) then) =
      __$$OrderStoreModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'store_name') String storeName,
      String email,
      String lat,
      String lng});
}

/// @nodoc
class __$$OrderStoreModelImplCopyWithImpl<$Res>
    extends _$OrderStoreModelCopyWithImpl<$Res, _$OrderStoreModelImpl>
    implements _$$OrderStoreModelImplCopyWith<$Res> {
  __$$OrderStoreModelImplCopyWithImpl(
      _$OrderStoreModelImpl _value, $Res Function(_$OrderStoreModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderStoreModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? storeName = null,
    Object? email = null,
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$OrderStoreModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      storeName: null == storeName
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderStoreModelImpl implements _OrderStoreModel {
  const _$OrderStoreModelImpl(
      {required this.id,
      @JsonKey(name: 'store_name') required this.storeName,
      required this.email,
      required this.lat,
      required this.lng});

  factory _$OrderStoreModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderStoreModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'store_name')
  final String storeName;
  @override
  final String email;
  @override
  final String lat;
  @override
  final String lng;

  @override
  String toString() {
    return 'OrderStoreModel(id: $id, storeName: $storeName, email: $email, lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStoreModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.storeName, storeName) ||
                other.storeName == storeName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, storeName, email, lat, lng);

  /// Create a copy of OrderStoreModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderStoreModelImplCopyWith<_$OrderStoreModelImpl> get copyWith =>
      __$$OrderStoreModelImplCopyWithImpl<_$OrderStoreModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderStoreModelImplToJson(
      this,
    );
  }
}

abstract class _OrderStoreModel implements OrderStoreModel {
  const factory _OrderStoreModel(
      {required final int id,
      @JsonKey(name: 'store_name') required final String storeName,
      required final String email,
      required final String lat,
      required final String lng}) = _$OrderStoreModelImpl;

  factory _OrderStoreModel.fromJson(Map<String, dynamic> json) =
      _$OrderStoreModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'store_name')
  String get storeName;
  @override
  String get email;
  @override
  String get lat;
  @override
  String get lng;

  /// Create a copy of OrderStoreModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderStoreModelImplCopyWith<_$OrderStoreModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
