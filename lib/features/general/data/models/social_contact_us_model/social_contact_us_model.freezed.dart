// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_contact_us_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SocialContactUsModel _$SocialContactUsModelFromJson(Map<String, dynamic> json) {
  return _SocialContactUsModel.fromJson(json);
}

/// @nodoc
mixin _$SocialContactUsModel {
  String get url => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  /// Serializes this SocialContactUsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocialContactUsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocialContactUsModelCopyWith<SocialContactUsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialContactUsModelCopyWith<$Res> {
  factory $SocialContactUsModelCopyWith(SocialContactUsModel value,
          $Res Function(SocialContactUsModel) then) =
      _$SocialContactUsModelCopyWithImpl<$Res, SocialContactUsModel>;
  @useResult
  $Res call({String url, String image});
}

/// @nodoc
class _$SocialContactUsModelCopyWithImpl<$Res,
        $Val extends SocialContactUsModel>
    implements $SocialContactUsModelCopyWith<$Res> {
  _$SocialContactUsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocialContactUsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialContactUsModelImplCopyWith<$Res>
    implements $SocialContactUsModelCopyWith<$Res> {
  factory _$$SocialContactUsModelImplCopyWith(_$SocialContactUsModelImpl value,
          $Res Function(_$SocialContactUsModelImpl) then) =
      __$$SocialContactUsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String image});
}

/// @nodoc
class __$$SocialContactUsModelImplCopyWithImpl<$Res>
    extends _$SocialContactUsModelCopyWithImpl<$Res, _$SocialContactUsModelImpl>
    implements _$$SocialContactUsModelImplCopyWith<$Res> {
  __$$SocialContactUsModelImplCopyWithImpl(_$SocialContactUsModelImpl _value,
      $Res Function(_$SocialContactUsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocialContactUsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? image = null,
  }) {
    return _then(_$SocialContactUsModelImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SocialContactUsModelImpl extends _SocialContactUsModel {
  _$SocialContactUsModelImpl({required this.url, required this.image})
      : super._();

  factory _$SocialContactUsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialContactUsModelImplFromJson(json);

  @override
  final String url;
  @override
  final String image;

  @override
  String toString() {
    return 'SocialContactUsModel(url: $url, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialContactUsModelImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, image);

  /// Create a copy of SocialContactUsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialContactUsModelImplCopyWith<_$SocialContactUsModelImpl>
      get copyWith =>
          __$$SocialContactUsModelImplCopyWithImpl<_$SocialContactUsModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialContactUsModelImplToJson(
      this,
    );
  }
}

abstract class _SocialContactUsModel extends SocialContactUsModel {
  factory _SocialContactUsModel(
      {required final String url,
      required final String image}) = _$SocialContactUsModelImpl;
  _SocialContactUsModel._() : super._();

  factory _SocialContactUsModel.fromJson(Map<String, dynamic> json) =
      _$SocialContactUsModelImpl.fromJson;

  @override
  String get url;
  @override
  String get image;

  /// Create a copy of SocialContactUsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialContactUsModelImplCopyWith<_$SocialContactUsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
