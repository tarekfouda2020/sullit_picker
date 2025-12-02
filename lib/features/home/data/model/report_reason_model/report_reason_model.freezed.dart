// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_reason_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReportReasonModel _$ReportReasonModelFromJson(Map<String, dynamic> json) {
  return _ReportReasonModel.fromJson(json);
}

/// @nodoc
mixin _$ReportReasonModel {
  String get key => throw _privateConstructorUsedError;
  set key(String value) => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  set label(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "is_selected", defaultValue: false)
  bool? get isSelected => throw _privateConstructorUsedError;
  @JsonKey(name: "is_selected", defaultValue: false)
  set isSelected(bool? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportReasonModelCopyWith<ReportReasonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportReasonModelCopyWith<$Res> {
  factory $ReportReasonModelCopyWith(
          ReportReasonModel value, $Res Function(ReportReasonModel) then) =
      _$ReportReasonModelCopyWithImpl<$Res, ReportReasonModel>;
  @useResult
  $Res call(
      {String key,
      String label,
      @JsonKey(name: "is_selected", defaultValue: false) bool? isSelected});
}

/// @nodoc
class _$ReportReasonModelCopyWithImpl<$Res, $Val extends ReportReasonModel>
    implements $ReportReasonModelCopyWith<$Res> {
  _$ReportReasonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? label = null,
    Object? isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportReasonModelImplCopyWith<$Res>
    implements $ReportReasonModelCopyWith<$Res> {
  factory _$$ReportReasonModelImplCopyWith(_$ReportReasonModelImpl value,
          $Res Function(_$ReportReasonModelImpl) then) =
      __$$ReportReasonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String key,
      String label,
      @JsonKey(name: "is_selected", defaultValue: false) bool? isSelected});
}

/// @nodoc
class __$$ReportReasonModelImplCopyWithImpl<$Res>
    extends _$ReportReasonModelCopyWithImpl<$Res, _$ReportReasonModelImpl>
    implements _$$ReportReasonModelImplCopyWith<$Res> {
  __$$ReportReasonModelImplCopyWithImpl(_$ReportReasonModelImpl _value,
      $Res Function(_$ReportReasonModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? label = null,
    Object? isSelected = freezed,
  }) {
    return _then(_$ReportReasonModelImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportReasonModelImpl extends _ReportReasonModel {
  _$ReportReasonModelImpl(
      {required this.key,
      required this.label,
      @JsonKey(name: "is_selected", defaultValue: false) this.isSelected})
      : super._();

  factory _$ReportReasonModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportReasonModelImplFromJson(json);

  @override
  String key;
  @override
  String label;
  @override
  @JsonKey(name: "is_selected", defaultValue: false)
  bool? isSelected;

  @override
  String toString() {
    return 'ReportReasonModel(key: $key, label: $label, isSelected: $isSelected)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportReasonModelImplCopyWith<_$ReportReasonModelImpl> get copyWith =>
      __$$ReportReasonModelImplCopyWithImpl<_$ReportReasonModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportReasonModelImplToJson(
      this,
    );
  }
}

abstract class _ReportReasonModel extends ReportReasonModel {
  factory _ReportReasonModel(
      {required String key,
      required String label,
      @JsonKey(name: "is_selected", defaultValue: false)
      bool? isSelected}) = _$ReportReasonModelImpl;
  _ReportReasonModel._() : super._();

  factory _ReportReasonModel.fromJson(Map<String, dynamic> json) =
      _$ReportReasonModelImpl.fromJson;

  @override
  String get key;
  set key(String value);
  @override
  String get label;
  set label(String value);
  @override
  @JsonKey(name: "is_selected", defaultValue: false)
  bool? get isSelected;
  @JsonKey(name: "is_selected", defaultValue: false)
  set isSelected(bool? value);
  @override
  @JsonKey(ignore: true)
  _$$ReportReasonModelImplCopyWith<_$ReportReasonModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
