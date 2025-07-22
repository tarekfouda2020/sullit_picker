// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'terms_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TermsModel _$TermsModelFromJson(Map<String, dynamic> json) {
  return _TermsModel.fromJson(json);
}

/// @nodoc
mixin _$TermsModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Serializes this TermsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TermsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TermsModelCopyWith<TermsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsModelCopyWith<$Res> {
  factory $TermsModelCopyWith(
          TermsModel value, $Res Function(TermsModel) then) =
      _$TermsModelCopyWithImpl<$Res, TermsModel>;
  @useResult
  $Res call({int id, String title, String content});
}

/// @nodoc
class _$TermsModelCopyWithImpl<$Res, $Val extends TermsModel>
    implements $TermsModelCopyWith<$Res> {
  _$TermsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TermsModel
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
abstract class _$$TermsModelImplCopyWith<$Res>
    implements $TermsModelCopyWith<$Res> {
  factory _$$TermsModelImplCopyWith(
          _$TermsModelImpl value, $Res Function(_$TermsModelImpl) then) =
      __$$TermsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String content});
}

/// @nodoc
class __$$TermsModelImplCopyWithImpl<$Res>
    extends _$TermsModelCopyWithImpl<$Res, _$TermsModelImpl>
    implements _$$TermsModelImplCopyWith<$Res> {
  __$$TermsModelImplCopyWithImpl(
      _$TermsModelImpl _value, $Res Function(_$TermsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TermsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_$TermsModelImpl(
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
class _$TermsModelImpl extends _TermsModel {
  const _$TermsModelImpl(
      {required this.id, required this.title, required this.content})
      : super._();

  factory _$TermsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TermsModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String content;

  @override
  String toString() {
    return 'TermsModel(id: $id, title: $title, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TermsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content);

  /// Create a copy of TermsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TermsModelImplCopyWith<_$TermsModelImpl> get copyWith =>
      __$$TermsModelImplCopyWithImpl<_$TermsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TermsModelImplToJson(
      this,
    );
  }
}

abstract class _TermsModel extends TermsModel {
  const factory _TermsModel(
      {required final int id,
      required final String title,
      required final String content}) = _$TermsModelImpl;
  const _TermsModel._() : super._();

  factory _TermsModel.fromJson(Map<String, dynamic> json) =
      _$TermsModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get content;

  /// Create a copy of TermsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TermsModelImplCopyWith<_$TermsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
