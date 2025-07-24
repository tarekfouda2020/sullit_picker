// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistics_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StatisticsModel _$StatisticsModelFromJson(Map<String, dynamic> json) {
  return _StatisticsModel.fromJson(json);
}

/// @nodoc
mixin _$StatisticsModel {
  @JsonKey(name: "total_orders")
  int get totalOrders => throw _privateConstructorUsedError;
  @JsonKey(name: "completed_orders")
  int get completedOrders => throw _privateConstructorUsedError;
  @JsonKey(name: "failed_orders")
  int get failedOrders => throw _privateConstructorUsedError;

  /// Serializes this StatisticsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatisticsModelCopyWith<StatisticsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsModelCopyWith<$Res> {
  factory $StatisticsModelCopyWith(
          StatisticsModel value, $Res Function(StatisticsModel) then) =
      _$StatisticsModelCopyWithImpl<$Res, StatisticsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "total_orders") int totalOrders,
      @JsonKey(name: "completed_orders") int completedOrders,
      @JsonKey(name: "failed_orders") int failedOrders});
}

/// @nodoc
class _$StatisticsModelCopyWithImpl<$Res, $Val extends StatisticsModel>
    implements $StatisticsModelCopyWith<$Res> {
  _$StatisticsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalOrders = null,
    Object? completedOrders = null,
    Object? failedOrders = null,
  }) {
    return _then(_value.copyWith(
      totalOrders: null == totalOrders
          ? _value.totalOrders
          : totalOrders // ignore: cast_nullable_to_non_nullable
              as int,
      completedOrders: null == completedOrders
          ? _value.completedOrders
          : completedOrders // ignore: cast_nullable_to_non_nullable
              as int,
      failedOrders: null == failedOrders
          ? _value.failedOrders
          : failedOrders // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatisticsModelImplCopyWith<$Res>
    implements $StatisticsModelCopyWith<$Res> {
  factory _$$StatisticsModelImplCopyWith(_$StatisticsModelImpl value,
          $Res Function(_$StatisticsModelImpl) then) =
      __$$StatisticsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "total_orders") int totalOrders,
      @JsonKey(name: "completed_orders") int completedOrders,
      @JsonKey(name: "failed_orders") int failedOrders});
}

/// @nodoc
class __$$StatisticsModelImplCopyWithImpl<$Res>
    extends _$StatisticsModelCopyWithImpl<$Res, _$StatisticsModelImpl>
    implements _$$StatisticsModelImplCopyWith<$Res> {
  __$$StatisticsModelImplCopyWithImpl(
      _$StatisticsModelImpl _value, $Res Function(_$StatisticsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalOrders = null,
    Object? completedOrders = null,
    Object? failedOrders = null,
  }) {
    return _then(_$StatisticsModelImpl(
      totalOrders: null == totalOrders
          ? _value.totalOrders
          : totalOrders // ignore: cast_nullable_to_non_nullable
              as int,
      completedOrders: null == completedOrders
          ? _value.completedOrders
          : completedOrders // ignore: cast_nullable_to_non_nullable
              as int,
      failedOrders: null == failedOrders
          ? _value.failedOrders
          : failedOrders // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$StatisticsModelImpl extends _StatisticsModel {
  _$StatisticsModelImpl(
      {@JsonKey(name: "total_orders") required this.totalOrders,
      @JsonKey(name: "completed_orders") required this.completedOrders,
      @JsonKey(name: "failed_orders") required this.failedOrders})
      : super._();

  factory _$StatisticsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatisticsModelImplFromJson(json);

  @override
  @JsonKey(name: "total_orders")
  final int totalOrders;
  @override
  @JsonKey(name: "completed_orders")
  final int completedOrders;
  @override
  @JsonKey(name: "failed_orders")
  final int failedOrders;

  @override
  String toString() {
    return 'StatisticsModel(totalOrders: $totalOrders, completedOrders: $completedOrders, failedOrders: $failedOrders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticsModelImpl &&
            (identical(other.totalOrders, totalOrders) ||
                other.totalOrders == totalOrders) &&
            (identical(other.completedOrders, completedOrders) ||
                other.completedOrders == completedOrders) &&
            (identical(other.failedOrders, failedOrders) ||
                other.failedOrders == failedOrders));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalOrders, completedOrders, failedOrders);

  /// Create a copy of StatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticsModelImplCopyWith<_$StatisticsModelImpl> get copyWith =>
      __$$StatisticsModelImplCopyWithImpl<_$StatisticsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticsModelImplToJson(
      this,
    );
  }
}

abstract class _StatisticsModel extends StatisticsModel {
  factory _StatisticsModel(
          {@JsonKey(name: "total_orders") required final int totalOrders,
          @JsonKey(name: "completed_orders") required final int completedOrders,
          @JsonKey(name: "failed_orders") required final int failedOrders}) =
      _$StatisticsModelImpl;
  _StatisticsModel._() : super._();

  factory _StatisticsModel.fromJson(Map<String, dynamic> json) =
      _$StatisticsModelImpl.fromJson;

  @override
  @JsonKey(name: "total_orders")
  int get totalOrders;
  @override
  @JsonKey(name: "completed_orders")
  int get completedOrders;
  @override
  @JsonKey(name: "failed_orders")
  int get failedOrders;

  /// Create a copy of StatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatisticsModelImplCopyWith<_$StatisticsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
