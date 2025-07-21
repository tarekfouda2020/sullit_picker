// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkTypeModel _$WorkTypeModelFromJson(Map<String, dynamic> json) {
  return _WorkTypeModel.fromJson(json);
}

/// @nodoc
mixin _$WorkTypeModel {
  String get key => throw _privateConstructorUsedError;
  set key(String value) => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  set label(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_selected', defaultValue: false)
  bool? get selected => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_selected', defaultValue: false)
  set selected(bool? value) => throw _privateConstructorUsedError;

  /// Serializes this WorkTypeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkTypeModelCopyWith<WorkTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkTypeModelCopyWith<$Res> {
  factory $WorkTypeModelCopyWith(
          WorkTypeModel value, $Res Function(WorkTypeModel) then) =
      _$WorkTypeModelCopyWithImpl<$Res, WorkTypeModel>;
  @useResult
  $Res call(
      {String key,
      String label,
      @JsonKey(name: 'is_selected', defaultValue: false) bool? selected});
}

/// @nodoc
class _$WorkTypeModelCopyWithImpl<$Res, $Val extends WorkTypeModel>
    implements $WorkTypeModelCopyWith<$Res> {
  _$WorkTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? label = null,
    Object? selected = freezed,
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
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkTypeModelImplCopyWith<$Res>
    implements $WorkTypeModelCopyWith<$Res> {
  factory _$$WorkTypeModelImplCopyWith(
          _$WorkTypeModelImpl value, $Res Function(_$WorkTypeModelImpl) then) =
      __$$WorkTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String key,
      String label,
      @JsonKey(name: 'is_selected', defaultValue: false) bool? selected});
}

/// @nodoc
class __$$WorkTypeModelImplCopyWithImpl<$Res>
    extends _$WorkTypeModelCopyWithImpl<$Res, _$WorkTypeModelImpl>
    implements _$$WorkTypeModelImplCopyWith<$Res> {
  __$$WorkTypeModelImplCopyWithImpl(
      _$WorkTypeModelImpl _value, $Res Function(_$WorkTypeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? label = null,
    Object? selected = freezed,
  }) {
    return _then(_$WorkTypeModelImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WorkTypeModelImpl extends _WorkTypeModel {
  _$WorkTypeModelImpl(
      {required this.key,
      required this.label,
      @JsonKey(name: 'is_selected', defaultValue: false) this.selected})
      : super._();

  factory _$WorkTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkTypeModelImplFromJson(json);

  @override
  String key;
  @override
  String label;
  @override
  @JsonKey(name: 'is_selected', defaultValue: false)
  bool? selected;

  @override
  String toString() {
    return 'WorkTypeModel(key: $key, label: $label, selected: $selected)';
  }

  /// Create a copy of WorkTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkTypeModelImplCopyWith<_$WorkTypeModelImpl> get copyWith =>
      __$$WorkTypeModelImplCopyWithImpl<_$WorkTypeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkTypeModelImplToJson(
      this,
    );
  }
}

abstract class _WorkTypeModel extends WorkTypeModel {
  factory _WorkTypeModel(
          {required String key,
          required String label,
          @JsonKey(name: 'is_selected', defaultValue: false) bool? selected}) =
      _$WorkTypeModelImpl;
  _WorkTypeModel._() : super._();

  factory _WorkTypeModel.fromJson(Map<String, dynamic> json) =
      _$WorkTypeModelImpl.fromJson;

  @override
  String get key;
  set key(String value);
  @override
  String get label;
  set label(String value);
  @override
  @JsonKey(name: 'is_selected', defaultValue: false)
  bool? get selected;
  @JsonKey(name: 'is_selected', defaultValue: false)
  set selected(bool? value);

  /// Create a copy of WorkTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkTypeModelImplCopyWith<_$WorkTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
