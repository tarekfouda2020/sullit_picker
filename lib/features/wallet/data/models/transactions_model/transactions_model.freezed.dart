// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionsModel _$TransactionsModelFromJson(Map<String, dynamic> json) {
  return _TransactionsModel.fromJson(json);
}

/// @nodoc
mixin _$TransactionsModel {
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "type_label")
  String get typeLabel => throw _privateConstructorUsedError;
  @JsonKey(name: "source_type")
  String get sourceType => throw _privateConstructorUsedError;
  @JsonKey(name: "source_type_label")
  String get sourceTypeLabel => throw _privateConstructorUsedError;
  @JsonKey(name: "reference_no")
  String get referenceNo => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this TransactionsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionsModelCopyWith<TransactionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsModelCopyWith<$Res> {
  factory $TransactionsModelCopyWith(
          TransactionsModel value, $Res Function(TransactionsModel) then) =
      _$TransactionsModelCopyWithImpl<$Res, TransactionsModel>;
  @useResult
  $Res call(
      {int id,
      String type,
      String amount,
      @JsonKey(name: "type_label") String typeLabel,
      @JsonKey(name: "source_type") String sourceType,
      @JsonKey(name: "source_type_label") String sourceTypeLabel,
      @JsonKey(name: "reference_no") String referenceNo,
      @JsonKey(name: "created_at") String createdAt});
}

/// @nodoc
class _$TransactionsModelCopyWithImpl<$Res, $Val extends TransactionsModel>
    implements $TransactionsModelCopyWith<$Res> {
  _$TransactionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? amount = null,
    Object? typeLabel = null,
    Object? sourceType = null,
    Object? sourceTypeLabel = null,
    Object? referenceNo = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      typeLabel: null == typeLabel
          ? _value.typeLabel
          : typeLabel // ignore: cast_nullable_to_non_nullable
              as String,
      sourceType: null == sourceType
          ? _value.sourceType
          : sourceType // ignore: cast_nullable_to_non_nullable
              as String,
      sourceTypeLabel: null == sourceTypeLabel
          ? _value.sourceTypeLabel
          : sourceTypeLabel // ignore: cast_nullable_to_non_nullable
              as String,
      referenceNo: null == referenceNo
          ? _value.referenceNo
          : referenceNo // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionsModelImplCopyWith<$Res>
    implements $TransactionsModelCopyWith<$Res> {
  factory _$$TransactionsModelImplCopyWith(_$TransactionsModelImpl value,
          $Res Function(_$TransactionsModelImpl) then) =
      __$$TransactionsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String type,
      String amount,
      @JsonKey(name: "type_label") String typeLabel,
      @JsonKey(name: "source_type") String sourceType,
      @JsonKey(name: "source_type_label") String sourceTypeLabel,
      @JsonKey(name: "reference_no") String referenceNo,
      @JsonKey(name: "created_at") String createdAt});
}

/// @nodoc
class __$$TransactionsModelImplCopyWithImpl<$Res>
    extends _$TransactionsModelCopyWithImpl<$Res, _$TransactionsModelImpl>
    implements _$$TransactionsModelImplCopyWith<$Res> {
  __$$TransactionsModelImplCopyWithImpl(_$TransactionsModelImpl _value,
      $Res Function(_$TransactionsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? amount = null,
    Object? typeLabel = null,
    Object? sourceType = null,
    Object? sourceTypeLabel = null,
    Object? referenceNo = null,
    Object? createdAt = null,
  }) {
    return _then(_$TransactionsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      typeLabel: null == typeLabel
          ? _value.typeLabel
          : typeLabel // ignore: cast_nullable_to_non_nullable
              as String,
      sourceType: null == sourceType
          ? _value.sourceType
          : sourceType // ignore: cast_nullable_to_non_nullable
              as String,
      sourceTypeLabel: null == sourceTypeLabel
          ? _value.sourceTypeLabel
          : sourceTypeLabel // ignore: cast_nullable_to_non_nullable
              as String,
      referenceNo: null == referenceNo
          ? _value.referenceNo
          : referenceNo // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TransactionsModelImpl extends _TransactionsModel {
  _$TransactionsModelImpl(
      {required this.id,
      required this.type,
      required this.amount,
      @JsonKey(name: "type_label") required this.typeLabel,
      @JsonKey(name: "source_type") required this.sourceType,
      @JsonKey(name: "source_type_label") required this.sourceTypeLabel,
      @JsonKey(name: "reference_no") required this.referenceNo,
      @JsonKey(name: "created_at") required this.createdAt})
      : super._();

  factory _$TransactionsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionsModelImplFromJson(json);

  @override
  final int id;
  @override
  final String type;
  @override
  final String amount;
  @override
  @JsonKey(name: "type_label")
  final String typeLabel;
  @override
  @JsonKey(name: "source_type")
  final String sourceType;
  @override
  @JsonKey(name: "source_type_label")
  final String sourceTypeLabel;
  @override
  @JsonKey(name: "reference_no")
  final String referenceNo;
  @override
  @JsonKey(name: "created_at")
  final String createdAt;

  @override
  String toString() {
    return 'TransactionsModel(id: $id, type: $type, amount: $amount, typeLabel: $typeLabel, sourceType: $sourceType, sourceTypeLabel: $sourceTypeLabel, referenceNo: $referenceNo, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.typeLabel, typeLabel) ||
                other.typeLabel == typeLabel) &&
            (identical(other.sourceType, sourceType) ||
                other.sourceType == sourceType) &&
            (identical(other.sourceTypeLabel, sourceTypeLabel) ||
                other.sourceTypeLabel == sourceTypeLabel) &&
            (identical(other.referenceNo, referenceNo) ||
                other.referenceNo == referenceNo) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, amount, typeLabel,
      sourceType, sourceTypeLabel, referenceNo, createdAt);

  /// Create a copy of TransactionsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionsModelImplCopyWith<_$TransactionsModelImpl> get copyWith =>
      __$$TransactionsModelImplCopyWithImpl<_$TransactionsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionsModelImplToJson(
      this,
    );
  }
}

abstract class _TransactionsModel extends TransactionsModel {
  factory _TransactionsModel(
      {required final int id,
      required final String type,
      required final String amount,
      @JsonKey(name: "type_label") required final String typeLabel,
      @JsonKey(name: "source_type") required final String sourceType,
      @JsonKey(name: "source_type_label") required final String sourceTypeLabel,
      @JsonKey(name: "reference_no") required final String referenceNo,
      @JsonKey(name: "created_at")
      required final String createdAt}) = _$TransactionsModelImpl;
  _TransactionsModel._() : super._();

  factory _TransactionsModel.fromJson(Map<String, dynamic> json) =
      _$TransactionsModelImpl.fromJson;

  @override
  int get id;
  @override
  String get type;
  @override
  String get amount;
  @override
  @JsonKey(name: "type_label")
  String get typeLabel;
  @override
  @JsonKey(name: "source_type")
  String get sourceType;
  @override
  @JsonKey(name: "source_type_label")
  String get sourceTypeLabel;
  @override
  @JsonKey(name: "reference_no")
  String get referenceNo;
  @override
  @JsonKey(name: "created_at")
  String get createdAt;

  /// Create a copy of TransactionsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionsModelImplCopyWith<_$TransactionsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
