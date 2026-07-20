// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pharmacy_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PharmacyOrderModel _$PharmacyOrderModelFromJson(Map<String, dynamic> json) {
  return _PharmacyOrderModel.fromJson(json);
}

/// @nodoc
mixin _$PharmacyOrderModel {
  BaseOrderInfo get base => throw _privateConstructorUsedError;
  set base(BaseOrderInfo value) => throw _privateConstructorUsedError;
  LocalPickingFields get local => throw _privateConstructorUsedError;
  set local(LocalPickingFields value) => throw _privateConstructorUsedError;
  PharmacyOnlyInfoDomainModel get pharmacyOnly =>
      throw _privateConstructorUsedError;
  set pharmacyOnly(PharmacyOnlyInfoDomainModel value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PharmacyOrderModelCopyWith<PharmacyOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PharmacyOrderModelCopyWith<$Res> {
  factory $PharmacyOrderModelCopyWith(
          PharmacyOrderModel value, $Res Function(PharmacyOrderModel) then) =
      _$PharmacyOrderModelCopyWithImpl<$Res, PharmacyOrderModel>;
  @useResult
  $Res call(
      {BaseOrderInfo base,
      LocalPickingFields local,
      PharmacyOnlyInfoDomainModel pharmacyOnly});

  $BaseOrderInfoCopyWith<$Res> get base;
  $LocalPickingFieldsCopyWith<$Res> get local;
  $PharmacyOnlyInfoDomainModelCopyWith<$Res> get pharmacyOnly;
}

/// @nodoc
class _$PharmacyOrderModelCopyWithImpl<$Res, $Val extends PharmacyOrderModel>
    implements $PharmacyOrderModelCopyWith<$Res> {
  _$PharmacyOrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = null,
    Object? local = null,
    Object? pharmacyOnly = null,
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
      pharmacyOnly: null == pharmacyOnly
          ? _value.pharmacyOnly
          : pharmacyOnly // ignore: cast_nullable_to_non_nullable
              as PharmacyOnlyInfoDomainModel,
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

  @override
  @pragma('vm:prefer-inline')
  $PharmacyOnlyInfoDomainModelCopyWith<$Res> get pharmacyOnly {
    return $PharmacyOnlyInfoDomainModelCopyWith<$Res>(_value.pharmacyOnly,
        (value) {
      return _then(_value.copyWith(pharmacyOnly: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PharmacyOrderModelImplCopyWith<$Res>
    implements $PharmacyOrderModelCopyWith<$Res> {
  factory _$$PharmacyOrderModelImplCopyWith(_$PharmacyOrderModelImpl value,
          $Res Function(_$PharmacyOrderModelImpl) then) =
      __$$PharmacyOrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseOrderInfo base,
      LocalPickingFields local,
      PharmacyOnlyInfoDomainModel pharmacyOnly});

  @override
  $BaseOrderInfoCopyWith<$Res> get base;
  @override
  $LocalPickingFieldsCopyWith<$Res> get local;
  @override
  $PharmacyOnlyInfoDomainModelCopyWith<$Res> get pharmacyOnly;
}

/// @nodoc
class __$$PharmacyOrderModelImplCopyWithImpl<$Res>
    extends _$PharmacyOrderModelCopyWithImpl<$Res, _$PharmacyOrderModelImpl>
    implements _$$PharmacyOrderModelImplCopyWith<$Res> {
  __$$PharmacyOrderModelImplCopyWithImpl(_$PharmacyOrderModelImpl _value,
      $Res Function(_$PharmacyOrderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = null,
    Object? local = null,
    Object? pharmacyOnly = null,
  }) {
    return _then(_$PharmacyOrderModelImpl(
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as BaseOrderInfo,
      local: null == local
          ? _value.local
          : local // ignore: cast_nullable_to_non_nullable
              as LocalPickingFields,
      pharmacyOnly: null == pharmacyOnly
          ? _value.pharmacyOnly
          : pharmacyOnly // ignore: cast_nullable_to_non_nullable
              as PharmacyOnlyInfoDomainModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PharmacyOrderModelImpl extends _PharmacyOrderModel {
  _$PharmacyOrderModelImpl(
      {required this.base, required this.local, required this.pharmacyOnly})
      : super._();

  factory _$PharmacyOrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PharmacyOrderModelImplFromJson(json);

  @override
  BaseOrderInfo base;
  @override
  LocalPickingFields local;
  @override
  PharmacyOnlyInfoDomainModel pharmacyOnly;

  @override
  String toString() {
    return 'PharmacyOrderModel(base: $base, local: $local, pharmacyOnly: $pharmacyOnly)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PharmacyOrderModelImplCopyWith<_$PharmacyOrderModelImpl> get copyWith =>
      __$$PharmacyOrderModelImplCopyWithImpl<_$PharmacyOrderModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PharmacyOrderModelImplToJson(
      this,
    );
  }
}

abstract class _PharmacyOrderModel extends PharmacyOrderModel {
  factory _PharmacyOrderModel(
          {required BaseOrderInfo base,
          required LocalPickingFields local,
          required PharmacyOnlyInfoDomainModel pharmacyOnly}) =
      _$PharmacyOrderModelImpl;
  _PharmacyOrderModel._() : super._();

  factory _PharmacyOrderModel.fromJson(Map<String, dynamic> json) =
      _$PharmacyOrderModelImpl.fromJson;

  @override
  BaseOrderInfo get base;
  set base(BaseOrderInfo value);
  @override
  LocalPickingFields get local;
  set local(LocalPickingFields value);
  @override
  PharmacyOnlyInfoDomainModel get pharmacyOnly;
  set pharmacyOnly(PharmacyOnlyInfoDomainModel value);
  @override
  @JsonKey(ignore: true)
  _$$PharmacyOrderModelImplCopyWith<_$PharmacyOrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
