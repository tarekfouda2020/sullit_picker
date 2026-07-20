// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pharmacy_only_info_domain_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PharmacyOnlyInfoDomainModel _$PharmacyOnlyInfoDomainModelFromJson(
    Map<String, dynamic> json) {
  return _PharmacyOnlyInfoDomainModel.fromJson(json);
}

/// @nodoc
mixin _$PharmacyOnlyInfoDomainModel {
  @JsonKey(name: 'payment_method_key')
  String? get paymentMethodKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method_key')
  set paymentMethodKey(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_info')
  String? get additionalInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_info')
  set additionalInfo(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_note_replies', defaultValue: [])
  List<dynamic>? get orderNoteReplies => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_note_replies', defaultValue: [])
  set orderNoteReplies(List<dynamic>? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'insurance_attachments', defaultValue: [])
  List<AttachmentModel>? get insuranceAttachments =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'insurance_attachments', defaultValue: [])
  set insuranceAttachments(List<AttachmentModel>? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'prescription_attachments', defaultValue: [])
  List<AttachmentModel>? get prescriptionAttachments =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'prescription_attachments', defaultValue: [])
  set prescriptionAttachments(List<AttachmentModel>? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'insurance_company')
  InsuranceCompanyModel? get insuranceCompany =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'insurance_company')
  set insuranceCompany(InsuranceCompanyModel? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'cancel_reason')
  String? get cancelReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancel_reason')
  set cancelReason(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'requested_by')
  String? get requestedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'requested_by')
  set requestedBy(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'requested_by_label')
  String? get requestedByLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'requested_by_label')
  set requestedByLabel(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'identity_document_file')
  String? get identityDocumentFile => throw _privateConstructorUsedError;
  @JsonKey(name: 'identity_document_file')
  set identityDocumentFile(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PharmacyOnlyInfoDomainModelCopyWith<PharmacyOnlyInfoDomainModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PharmacyOnlyInfoDomainModelCopyWith<$Res> {
  factory $PharmacyOnlyInfoDomainModelCopyWith(
          PharmacyOnlyInfoDomainModel value,
          $Res Function(PharmacyOnlyInfoDomainModel) then) =
      _$PharmacyOnlyInfoDomainModelCopyWithImpl<$Res,
          PharmacyOnlyInfoDomainModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'payment_method_key') String? paymentMethodKey,
      @JsonKey(name: 'additional_info') String? additionalInfo,
      @JsonKey(name: 'order_note_replies', defaultValue: [])
      List<dynamic>? orderNoteReplies,
      @JsonKey(name: 'insurance_attachments', defaultValue: [])
      List<AttachmentModel>? insuranceAttachments,
      @JsonKey(name: 'prescription_attachments', defaultValue: [])
      List<AttachmentModel>? prescriptionAttachments,
      @JsonKey(name: 'insurance_company')
      InsuranceCompanyModel? insuranceCompany,
      @JsonKey(name: 'cancel_reason') String? cancelReason,
      @JsonKey(name: 'requested_by') String? requestedBy,
      @JsonKey(name: 'requested_by_label') String? requestedByLabel,
      @JsonKey(name: 'identity_document_file') String? identityDocumentFile});

  $InsuranceCompanyModelCopyWith<$Res>? get insuranceCompany;
}

/// @nodoc
class _$PharmacyOnlyInfoDomainModelCopyWithImpl<$Res,
        $Val extends PharmacyOnlyInfoDomainModel>
    implements $PharmacyOnlyInfoDomainModelCopyWith<$Res> {
  _$PharmacyOnlyInfoDomainModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethodKey = freezed,
    Object? additionalInfo = freezed,
    Object? orderNoteReplies = freezed,
    Object? insuranceAttachments = freezed,
    Object? prescriptionAttachments = freezed,
    Object? insuranceCompany = freezed,
    Object? cancelReason = freezed,
    Object? requestedBy = freezed,
    Object? requestedByLabel = freezed,
    Object? identityDocumentFile = freezed,
  }) {
    return _then(_value.copyWith(
      paymentMethodKey: freezed == paymentMethodKey
          ? _value.paymentMethodKey
          : paymentMethodKey // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalInfo: freezed == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNoteReplies: freezed == orderNoteReplies
          ? _value.orderNoteReplies
          : orderNoteReplies // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      insuranceAttachments: freezed == insuranceAttachments
          ? _value.insuranceAttachments
          : insuranceAttachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentModel>?,
      prescriptionAttachments: freezed == prescriptionAttachments
          ? _value.prescriptionAttachments
          : prescriptionAttachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentModel>?,
      insuranceCompany: freezed == insuranceCompany
          ? _value.insuranceCompany
          : insuranceCompany // ignore: cast_nullable_to_non_nullable
              as InsuranceCompanyModel?,
      cancelReason: freezed == cancelReason
          ? _value.cancelReason
          : cancelReason // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedBy: freezed == requestedBy
          ? _value.requestedBy
          : requestedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedByLabel: freezed == requestedByLabel
          ? _value.requestedByLabel
          : requestedByLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      identityDocumentFile: freezed == identityDocumentFile
          ? _value.identityDocumentFile
          : identityDocumentFile // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InsuranceCompanyModelCopyWith<$Res>? get insuranceCompany {
    if (_value.insuranceCompany == null) {
      return null;
    }

    return $InsuranceCompanyModelCopyWith<$Res>(_value.insuranceCompany!,
        (value) {
      return _then(_value.copyWith(insuranceCompany: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PharmacyOnlyInfoDomainModelImplCopyWith<$Res>
    implements $PharmacyOnlyInfoDomainModelCopyWith<$Res> {
  factory _$$PharmacyOnlyInfoDomainModelImplCopyWith(
          _$PharmacyOnlyInfoDomainModelImpl value,
          $Res Function(_$PharmacyOnlyInfoDomainModelImpl) then) =
      __$$PharmacyOnlyInfoDomainModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'payment_method_key') String? paymentMethodKey,
      @JsonKey(name: 'additional_info') String? additionalInfo,
      @JsonKey(name: 'order_note_replies', defaultValue: [])
      List<dynamic>? orderNoteReplies,
      @JsonKey(name: 'insurance_attachments', defaultValue: [])
      List<AttachmentModel>? insuranceAttachments,
      @JsonKey(name: 'prescription_attachments', defaultValue: [])
      List<AttachmentModel>? prescriptionAttachments,
      @JsonKey(name: 'insurance_company')
      InsuranceCompanyModel? insuranceCompany,
      @JsonKey(name: 'cancel_reason') String? cancelReason,
      @JsonKey(name: 'requested_by') String? requestedBy,
      @JsonKey(name: 'requested_by_label') String? requestedByLabel,
      @JsonKey(name: 'identity_document_file') String? identityDocumentFile});

  @override
  $InsuranceCompanyModelCopyWith<$Res>? get insuranceCompany;
}

/// @nodoc
class __$$PharmacyOnlyInfoDomainModelImplCopyWithImpl<$Res>
    extends _$PharmacyOnlyInfoDomainModelCopyWithImpl<$Res,
        _$PharmacyOnlyInfoDomainModelImpl>
    implements _$$PharmacyOnlyInfoDomainModelImplCopyWith<$Res> {
  __$$PharmacyOnlyInfoDomainModelImplCopyWithImpl(
      _$PharmacyOnlyInfoDomainModelImpl _value,
      $Res Function(_$PharmacyOnlyInfoDomainModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethodKey = freezed,
    Object? additionalInfo = freezed,
    Object? orderNoteReplies = freezed,
    Object? insuranceAttachments = freezed,
    Object? prescriptionAttachments = freezed,
    Object? insuranceCompany = freezed,
    Object? cancelReason = freezed,
    Object? requestedBy = freezed,
    Object? requestedByLabel = freezed,
    Object? identityDocumentFile = freezed,
  }) {
    return _then(_$PharmacyOnlyInfoDomainModelImpl(
      paymentMethodKey: freezed == paymentMethodKey
          ? _value.paymentMethodKey
          : paymentMethodKey // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalInfo: freezed == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNoteReplies: freezed == orderNoteReplies
          ? _value.orderNoteReplies
          : orderNoteReplies // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      insuranceAttachments: freezed == insuranceAttachments
          ? _value.insuranceAttachments
          : insuranceAttachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentModel>?,
      prescriptionAttachments: freezed == prescriptionAttachments
          ? _value.prescriptionAttachments
          : prescriptionAttachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentModel>?,
      insuranceCompany: freezed == insuranceCompany
          ? _value.insuranceCompany
          : insuranceCompany // ignore: cast_nullable_to_non_nullable
              as InsuranceCompanyModel?,
      cancelReason: freezed == cancelReason
          ? _value.cancelReason
          : cancelReason // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedBy: freezed == requestedBy
          ? _value.requestedBy
          : requestedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedByLabel: freezed == requestedByLabel
          ? _value.requestedByLabel
          : requestedByLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      identityDocumentFile: freezed == identityDocumentFile
          ? _value.identityDocumentFile
          : identityDocumentFile // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PharmacyOnlyInfoDomainModelImpl extends _PharmacyOnlyInfoDomainModel {
  _$PharmacyOnlyInfoDomainModelImpl(
      {@JsonKey(name: 'payment_method_key') this.paymentMethodKey,
      @JsonKey(name: 'additional_info') this.additionalInfo,
      @JsonKey(name: 'order_note_replies', defaultValue: [])
      this.orderNoteReplies,
      @JsonKey(name: 'insurance_attachments', defaultValue: [])
      this.insuranceAttachments,
      @JsonKey(name: 'prescription_attachments', defaultValue: [])
      this.prescriptionAttachments,
      @JsonKey(name: 'insurance_company') this.insuranceCompany,
      @JsonKey(name: 'cancel_reason') this.cancelReason,
      @JsonKey(name: 'requested_by') this.requestedBy,
      @JsonKey(name: 'requested_by_label') this.requestedByLabel,
      @JsonKey(name: 'identity_document_file') this.identityDocumentFile})
      : super._();

  factory _$PharmacyOnlyInfoDomainModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PharmacyOnlyInfoDomainModelImplFromJson(json);

  @override
  @JsonKey(name: 'payment_method_key')
  String? paymentMethodKey;
  @override
  @JsonKey(name: 'additional_info')
  String? additionalInfo;
  @override
  @JsonKey(name: 'order_note_replies', defaultValue: [])
  List<dynamic>? orderNoteReplies;
  @override
  @JsonKey(name: 'insurance_attachments', defaultValue: [])
  List<AttachmentModel>? insuranceAttachments;
  @override
  @JsonKey(name: 'prescription_attachments', defaultValue: [])
  List<AttachmentModel>? prescriptionAttachments;
  @override
  @JsonKey(name: 'insurance_company')
  InsuranceCompanyModel? insuranceCompany;
  @override
  @JsonKey(name: 'cancel_reason')
  String? cancelReason;
  @override
  @JsonKey(name: 'requested_by')
  String? requestedBy;
  @override
  @JsonKey(name: 'requested_by_label')
  String? requestedByLabel;
  @override
  @JsonKey(name: 'identity_document_file')
  String? identityDocumentFile;

  @override
  String toString() {
    return 'PharmacyOnlyInfoDomainModel(paymentMethodKey: $paymentMethodKey, additionalInfo: $additionalInfo, orderNoteReplies: $orderNoteReplies, insuranceAttachments: $insuranceAttachments, prescriptionAttachments: $prescriptionAttachments, insuranceCompany: $insuranceCompany, cancelReason: $cancelReason, requestedBy: $requestedBy, requestedByLabel: $requestedByLabel, identityDocumentFile: $identityDocumentFile)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PharmacyOnlyInfoDomainModelImplCopyWith<_$PharmacyOnlyInfoDomainModelImpl>
      get copyWith => __$$PharmacyOnlyInfoDomainModelImplCopyWithImpl<
          _$PharmacyOnlyInfoDomainModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PharmacyOnlyInfoDomainModelImplToJson(
      this,
    );
  }
}

abstract class _PharmacyOnlyInfoDomainModel
    extends PharmacyOnlyInfoDomainModel {
  factory _PharmacyOnlyInfoDomainModel(
      {@JsonKey(name: 'payment_method_key') String? paymentMethodKey,
      @JsonKey(name: 'additional_info') String? additionalInfo,
      @JsonKey(name: 'order_note_replies', defaultValue: [])
      List<dynamic>? orderNoteReplies,
      @JsonKey(name: 'insurance_attachments', defaultValue: [])
      List<AttachmentModel>? insuranceAttachments,
      @JsonKey(name: 'prescription_attachments', defaultValue: [])
      List<AttachmentModel>? prescriptionAttachments,
      @JsonKey(name: 'insurance_company')
      InsuranceCompanyModel? insuranceCompany,
      @JsonKey(name: 'cancel_reason') String? cancelReason,
      @JsonKey(name: 'requested_by') String? requestedBy,
      @JsonKey(name: 'requested_by_label') String? requestedByLabel,
      @JsonKey(name: 'identity_document_file')
      String? identityDocumentFile}) = _$PharmacyOnlyInfoDomainModelImpl;
  _PharmacyOnlyInfoDomainModel._() : super._();

  factory _PharmacyOnlyInfoDomainModel.fromJson(Map<String, dynamic> json) =
      _$PharmacyOnlyInfoDomainModelImpl.fromJson;

  @override
  @JsonKey(name: 'payment_method_key')
  String? get paymentMethodKey;
  @JsonKey(name: 'payment_method_key')
  set paymentMethodKey(String? value);
  @override
  @JsonKey(name: 'additional_info')
  String? get additionalInfo;
  @JsonKey(name: 'additional_info')
  set additionalInfo(String? value);
  @override
  @JsonKey(name: 'order_note_replies', defaultValue: [])
  List<dynamic>? get orderNoteReplies;
  @JsonKey(name: 'order_note_replies', defaultValue: [])
  set orderNoteReplies(List<dynamic>? value);
  @override
  @JsonKey(name: 'insurance_attachments', defaultValue: [])
  List<AttachmentModel>? get insuranceAttachments;
  @JsonKey(name: 'insurance_attachments', defaultValue: [])
  set insuranceAttachments(List<AttachmentModel>? value);
  @override
  @JsonKey(name: 'prescription_attachments', defaultValue: [])
  List<AttachmentModel>? get prescriptionAttachments;
  @JsonKey(name: 'prescription_attachments', defaultValue: [])
  set prescriptionAttachments(List<AttachmentModel>? value);
  @override
  @JsonKey(name: 'insurance_company')
  InsuranceCompanyModel? get insuranceCompany;
  @JsonKey(name: 'insurance_company')
  set insuranceCompany(InsuranceCompanyModel? value);
  @override
  @JsonKey(name: 'cancel_reason')
  String? get cancelReason;
  @JsonKey(name: 'cancel_reason')
  set cancelReason(String? value);
  @override
  @JsonKey(name: 'requested_by')
  String? get requestedBy;
  @JsonKey(name: 'requested_by')
  set requestedBy(String? value);
  @override
  @JsonKey(name: 'requested_by_label')
  String? get requestedByLabel;
  @JsonKey(name: 'requested_by_label')
  set requestedByLabel(String? value);
  @override
  @JsonKey(name: 'identity_document_file')
  String? get identityDocumentFile;
  @JsonKey(name: 'identity_document_file')
  set identityDocumentFile(String? value);
  @override
  @JsonKey(ignore: true)
  _$$PharmacyOnlyInfoDomainModelImplCopyWith<_$PharmacyOnlyInfoDomainModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AttachmentModel _$AttachmentModelFromJson(Map<String, dynamic> json) {
  return _AttachmentModel.fromJson(json);
}

/// @nodoc
mixin _$AttachmentModel {
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttachmentModelCopyWith<AttachmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentModelCopyWith<$Res> {
  factory $AttachmentModelCopyWith(
          AttachmentModel value, $Res Function(AttachmentModel) then) =
      _$AttachmentModelCopyWithImpl<$Res, AttachmentModel>;
  @useResult
  $Res call({int id, String url, String type});
}

/// @nodoc
class _$AttachmentModelCopyWithImpl<$Res, $Val extends AttachmentModel>
    implements $AttachmentModelCopyWith<$Res> {
  _$AttachmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttachmentModelImplCopyWith<$Res>
    implements $AttachmentModelCopyWith<$Res> {
  factory _$$AttachmentModelImplCopyWith(_$AttachmentModelImpl value,
          $Res Function(_$AttachmentModelImpl) then) =
      __$$AttachmentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String url, String type});
}

/// @nodoc
class __$$AttachmentModelImplCopyWithImpl<$Res>
    extends _$AttachmentModelCopyWithImpl<$Res, _$AttachmentModelImpl>
    implements _$$AttachmentModelImplCopyWith<$Res> {
  __$$AttachmentModelImplCopyWithImpl(
      _$AttachmentModelImpl _value, $Res Function(_$AttachmentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? type = null,
  }) {
    return _then(_$AttachmentModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttachmentModelImpl implements _AttachmentModel {
  const _$AttachmentModelImpl(
      {required this.id, required this.url, required this.type});

  factory _$AttachmentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttachmentModelImplFromJson(json);

  @override
  final int id;
  @override
  final String url;
  @override
  final String type;

  @override
  String toString() {
    return 'AttachmentModel(id: $id, url: $url, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, url, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttachmentModelImplCopyWith<_$AttachmentModelImpl> get copyWith =>
      __$$AttachmentModelImplCopyWithImpl<_$AttachmentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttachmentModelImplToJson(
      this,
    );
  }
}

abstract class _AttachmentModel implements AttachmentModel {
  const factory _AttachmentModel(
      {required final int id,
      required final String url,
      required final String type}) = _$AttachmentModelImpl;

  factory _AttachmentModel.fromJson(Map<String, dynamic> json) =
      _$AttachmentModelImpl.fromJson;

  @override
  int get id;
  @override
  String get url;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$AttachmentModelImplCopyWith<_$AttachmentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InsuranceCompanyModel _$InsuranceCompanyModelFromJson(
    Map<String, dynamic> json) {
  return _InsuranceCompanyModel.fromJson(json);
}

/// @nodoc
mixin _$InsuranceCompanyModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InsuranceCompanyModelCopyWith<InsuranceCompanyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsuranceCompanyModelCopyWith<$Res> {
  factory $InsuranceCompanyModelCopyWith(InsuranceCompanyModel value,
          $Res Function(InsuranceCompanyModel) then) =
      _$InsuranceCompanyModelCopyWithImpl<$Res, InsuranceCompanyModel>;
  @useResult
  $Res call({int id, String name, String code, String logo});
}

/// @nodoc
class _$InsuranceCompanyModelCopyWithImpl<$Res,
        $Val extends InsuranceCompanyModel>
    implements $InsuranceCompanyModelCopyWith<$Res> {
  _$InsuranceCompanyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? logo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InsuranceCompanyModelImplCopyWith<$Res>
    implements $InsuranceCompanyModelCopyWith<$Res> {
  factory _$$InsuranceCompanyModelImplCopyWith(
          _$InsuranceCompanyModelImpl value,
          $Res Function(_$InsuranceCompanyModelImpl) then) =
      __$$InsuranceCompanyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String code, String logo});
}

/// @nodoc
class __$$InsuranceCompanyModelImplCopyWithImpl<$Res>
    extends _$InsuranceCompanyModelCopyWithImpl<$Res,
        _$InsuranceCompanyModelImpl>
    implements _$$InsuranceCompanyModelImplCopyWith<$Res> {
  __$$InsuranceCompanyModelImplCopyWithImpl(_$InsuranceCompanyModelImpl _value,
      $Res Function(_$InsuranceCompanyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? logo = null,
  }) {
    return _then(_$InsuranceCompanyModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InsuranceCompanyModelImpl implements _InsuranceCompanyModel {
  const _$InsuranceCompanyModelImpl(
      {required this.id,
      required this.name,
      required this.code,
      required this.logo});

  factory _$InsuranceCompanyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InsuranceCompanyModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String code;
  @override
  final String logo;

  @override
  String toString() {
    return 'InsuranceCompanyModel(id: $id, name: $name, code: $code, logo: $logo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsuranceCompanyModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, code, logo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsuranceCompanyModelImplCopyWith<_$InsuranceCompanyModelImpl>
      get copyWith => __$$InsuranceCompanyModelImplCopyWithImpl<
          _$InsuranceCompanyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InsuranceCompanyModelImplToJson(
      this,
    );
  }
}

abstract class _InsuranceCompanyModel implements InsuranceCompanyModel {
  const factory _InsuranceCompanyModel(
      {required final int id,
      required final String name,
      required final String code,
      required final String logo}) = _$InsuranceCompanyModelImpl;

  factory _InsuranceCompanyModel.fromJson(Map<String, dynamic> json) =
      _$InsuranceCompanyModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get code;
  @override
  String get logo;
  @override
  @JsonKey(ignore: true)
  _$$InsuranceCompanyModelImplCopyWith<_$InsuranceCompanyModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
