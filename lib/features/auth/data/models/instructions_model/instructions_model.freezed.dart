// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'instructions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InstructionsModel _$InstructionsModelFromJson(Map<String, dynamic> json) {
  return _InstructionsModel.fromJson(json);
}

/// @nodoc
mixin _$InstructionsModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Serializes this InstructionsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InstructionsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InstructionsModelCopyWith<InstructionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstructionsModelCopyWith<$Res> {
  factory $InstructionsModelCopyWith(
          InstructionsModel value, $Res Function(InstructionsModel) then) =
      _$InstructionsModelCopyWithImpl<$Res, InstructionsModel>;
  @useResult
  $Res call({int id, String title, String content});
}

/// @nodoc
class _$InstructionsModelCopyWithImpl<$Res, $Val extends InstructionsModel>
    implements $InstructionsModelCopyWith<$Res> {
  _$InstructionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InstructionsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InstructionsModelImplCopyWith<$Res>
    implements $InstructionsModelCopyWith<$Res> {
  factory _$$InstructionsModelImplCopyWith(_$InstructionsModelImpl value,
          $Res Function(_$InstructionsModelImpl) then) =
      __$$InstructionsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String content});
}

/// @nodoc
class __$$InstructionsModelImplCopyWithImpl<$Res>
    extends _$InstructionsModelCopyWithImpl<$Res, _$InstructionsModelImpl>
    implements _$$InstructionsModelImplCopyWith<$Res> {
  __$$InstructionsModelImplCopyWithImpl(_$InstructionsModelImpl _value,
      $Res Function(_$InstructionsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of InstructionsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_$InstructionsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$InstructionsModelImpl extends _InstructionsModel {
  _$InstructionsModelImpl(
      {required this.id, required this.title, required this.content})
      : super._();

  factory _$InstructionsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstructionsModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String content;

  @override
  String toString() {
    return 'InstructionsModel(id: $id, title: $title, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstructionsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content);

  /// Create a copy of InstructionsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InstructionsModelImplCopyWith<_$InstructionsModelImpl> get copyWith =>
      __$$InstructionsModelImplCopyWithImpl<_$InstructionsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InstructionsModelImplToJson(
      this,
    );
  }
}

abstract class _InstructionsModel extends InstructionsModel {
  factory _InstructionsModel(
      {required final int id,
      required final String title,
      required final String content}) = _$InstructionsModelImpl;
  _InstructionsModel._() : super._();

  factory _InstructionsModel.fromJson(Map<String, dynamic> json) =
      _$InstructionsModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get content;

  /// Create a copy of InstructionsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InstructionsModelImplCopyWith<_$InstructionsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
