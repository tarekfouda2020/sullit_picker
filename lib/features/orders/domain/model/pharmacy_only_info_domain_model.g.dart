// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pharmacy_only_info_domain_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PharmacyOnlyInfoDomainModelImpl _$$PharmacyOnlyInfoDomainModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PharmacyOnlyInfoDomainModelImpl(
      paymentMethodKey: json['payment_method_key'] as String?,
      additionalInfo: json['additional_info'] as String?,
      orderNoteReplies: json['order_note_replies'] as List<dynamic>? ?? [],
      insuranceAttachments: (json['insurance_attachments'] as List<dynamic>?)
              ?.map((e) => AttachmentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      prescriptionAttachments: (json['prescription_attachments']
                  as List<dynamic>?)
              ?.map((e) => AttachmentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      insuranceCompany: json['insurance_company'] == null
          ? null
          : InsuranceCompanyModel.fromJson(
              json['insurance_company'] as Map<String, dynamic>),
      cancelReason: json['cancel_reason'] as String?,
      requestedBy: json['requested_by'] as String?,
      requestedByLabel: json['requested_by_label'] as String?,
      identityDocumentFile: json['identity_document_file'] as String?,
    );

Map<String, dynamic> _$$PharmacyOnlyInfoDomainModelImplToJson(
        _$PharmacyOnlyInfoDomainModelImpl instance) =>
    <String, dynamic>{
      'payment_method_key': instance.paymentMethodKey,
      'additional_info': instance.additionalInfo,
      'order_note_replies': instance.orderNoteReplies,
      'insurance_attachments': instance.insuranceAttachments,
      'prescription_attachments': instance.prescriptionAttachments,
      'insurance_company': instance.insuranceCompany,
      'cancel_reason': instance.cancelReason,
      'requested_by': instance.requestedBy,
      'requested_by_label': instance.requestedByLabel,
      'identity_document_file': instance.identityDocumentFile,
    };

_$AttachmentModelImpl _$$AttachmentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AttachmentModelImpl(
      id: (json['id'] as num).toInt(),
      url: json['url'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$AttachmentModelImplToJson(
        _$AttachmentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'type': instance.type,
    };

_$InsuranceCompanyModelImpl _$$InsuranceCompanyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InsuranceCompanyModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      code: json['code'] as String,
      logo: json['logo'] as String,
    );

Map<String, dynamic> _$$InsuranceCompanyModelImplToJson(
        _$InsuranceCompanyModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'logo': instance.logo,
    };
