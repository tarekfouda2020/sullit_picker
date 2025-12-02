// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'available_for_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AvailableForOrderModel _$AvailableForOrderModelFromJson(
    Map<String, dynamic> json) {
  return _AvailableForOrderModel.fromJson(json);
}

/// @nodoc
mixin _$AvailableForOrderModel {
  String? get msg => throw _privateConstructorUsedError;
  ToggleAvailableForOrderModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailableForOrderModelCopyWith<AvailableForOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableForOrderModelCopyWith<$Res> {
  factory $AvailableForOrderModelCopyWith(AvailableForOrderModel value,
          $Res Function(AvailableForOrderModel) then) =
      _$AvailableForOrderModelCopyWithImpl<$Res, AvailableForOrderModel>;
  @useResult
  $Res call({String? msg, ToggleAvailableForOrderModel? data});

  $ToggleAvailableForOrderModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$AvailableForOrderModelCopyWithImpl<$Res,
        $Val extends AvailableForOrderModel>
    implements $AvailableForOrderModelCopyWith<$Res> {
  _$AvailableForOrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ToggleAvailableForOrderModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ToggleAvailableForOrderModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ToggleAvailableForOrderModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AvailableForOrderModelImplCopyWith<$Res>
    implements $AvailableForOrderModelCopyWith<$Res> {
  factory _$$AvailableForOrderModelImplCopyWith(
          _$AvailableForOrderModelImpl value,
          $Res Function(_$AvailableForOrderModelImpl) then) =
      __$$AvailableForOrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? msg, ToggleAvailableForOrderModel? data});

  @override
  $ToggleAvailableForOrderModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AvailableForOrderModelImplCopyWithImpl<$Res>
    extends _$AvailableForOrderModelCopyWithImpl<$Res,
        _$AvailableForOrderModelImpl>
    implements _$$AvailableForOrderModelImplCopyWith<$Res> {
  __$$AvailableForOrderModelImplCopyWithImpl(
      _$AvailableForOrderModelImpl _value,
      $Res Function(_$AvailableForOrderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AvailableForOrderModelImpl(
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ToggleAvailableForOrderModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AvailableForOrderModelImpl extends _AvailableForOrderModel {
  _$AvailableForOrderModelImpl({this.msg, this.data}) : super._();

  factory _$AvailableForOrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailableForOrderModelImplFromJson(json);

  @override
  final String? msg;
  @override
  final ToggleAvailableForOrderModel? data;

  @override
  String toString() {
    return 'AvailableForOrderModel(msg: $msg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailableForOrderModelImpl &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, msg, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailableForOrderModelImplCopyWith<_$AvailableForOrderModelImpl>
      get copyWith => __$$AvailableForOrderModelImplCopyWithImpl<
          _$AvailableForOrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailableForOrderModelImplToJson(
      this,
    );
  }
}

abstract class _AvailableForOrderModel extends AvailableForOrderModel {
  factory _AvailableForOrderModel(
      {final String? msg,
      final ToggleAvailableForOrderModel? data}) = _$AvailableForOrderModelImpl;
  _AvailableForOrderModel._() : super._();

  factory _AvailableForOrderModel.fromJson(Map<String, dynamic> json) =
      _$AvailableForOrderModelImpl.fromJson;

  @override
  String? get msg;
  @override
  ToggleAvailableForOrderModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$AvailableForOrderModelImplCopyWith<_$AvailableForOrderModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ToggleAvailableForOrderModel _$ToggleAvailableForOrderModelFromJson(
    Map<String, dynamic> json) {
  return _ToggleAvailableForOrderModel.fromJson(json);
}

/// @nodoc
mixin _$ToggleAvailableForOrderModel {
  @JsonKey(name: "is_available")
  bool get isAvailable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToggleAvailableForOrderModelCopyWith<ToggleAvailableForOrderModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToggleAvailableForOrderModelCopyWith<$Res> {
  factory $ToggleAvailableForOrderModelCopyWith(
          ToggleAvailableForOrderModel value,
          $Res Function(ToggleAvailableForOrderModel) then) =
      _$ToggleAvailableForOrderModelCopyWithImpl<$Res,
          ToggleAvailableForOrderModel>;
  @useResult
  $Res call({@JsonKey(name: "is_available") bool isAvailable});
}

/// @nodoc
class _$ToggleAvailableForOrderModelCopyWithImpl<$Res,
        $Val extends ToggleAvailableForOrderModel>
    implements $ToggleAvailableForOrderModelCopyWith<$Res> {
  _$ToggleAvailableForOrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAvailable = null,
  }) {
    return _then(_value.copyWith(
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToggleAvailableForOrderModelImplCopyWith<$Res>
    implements $ToggleAvailableForOrderModelCopyWith<$Res> {
  factory _$$ToggleAvailableForOrderModelImplCopyWith(
          _$ToggleAvailableForOrderModelImpl value,
          $Res Function(_$ToggleAvailableForOrderModelImpl) then) =
      __$$ToggleAvailableForOrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "is_available") bool isAvailable});
}

/// @nodoc
class __$$ToggleAvailableForOrderModelImplCopyWithImpl<$Res>
    extends _$ToggleAvailableForOrderModelCopyWithImpl<$Res,
        _$ToggleAvailableForOrderModelImpl>
    implements _$$ToggleAvailableForOrderModelImplCopyWith<$Res> {
  __$$ToggleAvailableForOrderModelImplCopyWithImpl(
      _$ToggleAvailableForOrderModelImpl _value,
      $Res Function(_$ToggleAvailableForOrderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAvailable = null,
  }) {
    return _then(_$ToggleAvailableForOrderModelImpl(
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ToggleAvailableForOrderModelImpl extends _ToggleAvailableForOrderModel {
  _$ToggleAvailableForOrderModelImpl(
      {@JsonKey(name: "is_available") required this.isAvailable})
      : super._();

  factory _$ToggleAvailableForOrderModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ToggleAvailableForOrderModelImplFromJson(json);

  @override
  @JsonKey(name: "is_available")
  final bool isAvailable;

  @override
  String toString() {
    return 'ToggleAvailableForOrderModel(isAvailable: $isAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleAvailableForOrderModelImpl &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isAvailable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleAvailableForOrderModelImplCopyWith<
          _$ToggleAvailableForOrderModelImpl>
      get copyWith => __$$ToggleAvailableForOrderModelImplCopyWithImpl<
          _$ToggleAvailableForOrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToggleAvailableForOrderModelImplToJson(
      this,
    );
  }
}

abstract class _ToggleAvailableForOrderModel
    extends ToggleAvailableForOrderModel {
  factory _ToggleAvailableForOrderModel(
          {@JsonKey(name: "is_available") required final bool isAvailable}) =
      _$ToggleAvailableForOrderModelImpl;
  _ToggleAvailableForOrderModel._() : super._();

  factory _ToggleAvailableForOrderModel.fromJson(Map<String, dynamic> json) =
      _$ToggleAvailableForOrderModelImpl.fromJson;

  @override
  @JsonKey(name: "is_available")
  bool get isAvailable;
  @override
  @JsonKey(ignore: true)
  _$$ToggleAvailableForOrderModelImplCopyWith<
          _$ToggleAvailableForOrderModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
