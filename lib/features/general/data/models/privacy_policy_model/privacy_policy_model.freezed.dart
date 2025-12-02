// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'privacy_policy_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PrivacyPolicyModel _$PrivacyPolicyModelFromJson(Map<String, dynamic> json) {
  return _PrivacyPolicyModel.fromJson(json);
}

/// @nodoc
mixin _$PrivacyPolicyModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrivacyPolicyModelCopyWith<PrivacyPolicyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivacyPolicyModelCopyWith<$Res> {
  factory $PrivacyPolicyModelCopyWith(
          PrivacyPolicyModel value, $Res Function(PrivacyPolicyModel) then) =
      _$PrivacyPolicyModelCopyWithImpl<$Res, PrivacyPolicyModel>;
  @useResult
  $Res call({int id, String title, String content});
}

/// @nodoc
class _$PrivacyPolicyModelCopyWithImpl<$Res, $Val extends PrivacyPolicyModel>
    implements $PrivacyPolicyModelCopyWith<$Res> {
  _$PrivacyPolicyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$PrivacyPolicyModelImplCopyWith<$Res>
    implements $PrivacyPolicyModelCopyWith<$Res> {
  factory _$$PrivacyPolicyModelImplCopyWith(_$PrivacyPolicyModelImpl value,
          $Res Function(_$PrivacyPolicyModelImpl) then) =
      __$$PrivacyPolicyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String content});
}

/// @nodoc
class __$$PrivacyPolicyModelImplCopyWithImpl<$Res>
    extends _$PrivacyPolicyModelCopyWithImpl<$Res, _$PrivacyPolicyModelImpl>
    implements _$$PrivacyPolicyModelImplCopyWith<$Res> {
  __$$PrivacyPolicyModelImplCopyWithImpl(_$PrivacyPolicyModelImpl _value,
      $Res Function(_$PrivacyPolicyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_$PrivacyPolicyModelImpl(
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
class _$PrivacyPolicyModelImpl extends _PrivacyPolicyModel {
  const _$PrivacyPolicyModelImpl(
      {required this.id, required this.title, required this.content})
      : super._();

  factory _$PrivacyPolicyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrivacyPolicyModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String content;

  @override
  String toString() {
    return 'PrivacyPolicyModel(id: $id, title: $title, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivacyPolicyModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivacyPolicyModelImplCopyWith<_$PrivacyPolicyModelImpl> get copyWith =>
      __$$PrivacyPolicyModelImplCopyWithImpl<_$PrivacyPolicyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrivacyPolicyModelImplToJson(
      this,
    );
  }
}

abstract class _PrivacyPolicyModel extends PrivacyPolicyModel {
  const factory _PrivacyPolicyModel(
      {required final int id,
      required final String title,
      required final String content}) = _$PrivacyPolicyModelImpl;
  const _PrivacyPolicyModel._() : super._();

  factory _PrivacyPolicyModel.fromJson(Map<String, dynamic> json) =
      _$PrivacyPolicyModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$PrivacyPolicyModelImplCopyWith<_$PrivacyPolicyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
