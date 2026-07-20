import 'package:freezed_annotation/freezed_annotation.dart';

part 'pharmacy_only_info_domain_model.freezed.dart';

part 'pharmacy_only_info_domain_model.g.dart';

/// Internal JSON-parsing helper only. Groups the pharmacy-only fields so
/// `PharmacyOrderModel.fromJson` can compose them via one generated
/// `fromJson` call instead of hand-parsing each key.
///
/// This is NOT the model used anywhere else in the app -- the actual,
/// public pharmacy order type is `PharmacyOrderModel`
/// (lib/features/home/data/model/prescription_order_details/pharmacy_order_model.dart).
/// Don't construct, pass around, or extend this type outside that file --
/// doing so would create a second, competing "pharmacy order" type in the
/// codebase.
@unfreezed
class PharmacyOnlyInfoDomainModel with _$PharmacyOnlyInfoDomainModel {
  const PharmacyOnlyInfoDomainModel._();

  factory PharmacyOnlyInfoDomainModel({
    @JsonKey(name: 'payment_method_key') String? paymentMethodKey,
    @JsonKey(name: 'additional_info') String? additionalInfo,
    @JsonKey(name: 'order_note_replies', defaultValue: [])
    List<dynamic>? orderNoteReplies,
    @JsonKey(name: 'insurance_attachments', defaultValue: [])
    List<AttachmentModel>? insuranceAttachments,
    @JsonKey(name: 'prescription_attachments', defaultValue: [])
    List<AttachmentModel>? prescriptionAttachments,
    @JsonKey(name: 'insurance_company') InsuranceCompanyModel? insuranceCompany,
    @JsonKey(name: 'cancel_reason') String? cancelReason,
    @JsonKey(name: 'requested_by') String? requestedBy,
    @JsonKey(name: 'requested_by_label') String? requestedByLabel,
    @JsonKey(name: 'identity_document_file') String? identityDocumentFile,
  }) = _PharmacyOnlyInfoDomainModel;

  factory PharmacyOnlyInfoDomainModel.fromJson(Map<String, dynamic> json) =>
      _$PharmacyOnlyInfoDomainModelFromJson(json);
}

@freezed
class AttachmentModel with _$AttachmentModel {
  const factory AttachmentModel({
    required int id,
    required String url,
    required String type,
  }) = _AttachmentModel;

  factory AttachmentModel.fromJson(Map<String, dynamic> json) =>
      _$AttachmentModelFromJson(json);
}

@freezed
class InsuranceCompanyModel with _$InsuranceCompanyModel {
  const factory InsuranceCompanyModel({
    required int id,
    required String name,
    required String code,
    required String logo,
  }) = _InsuranceCompanyModel;

  factory InsuranceCompanyModel.fromJson(Map<String, dynamic> json) =>
      _$InsuranceCompanyModelFromJson(json);
}
