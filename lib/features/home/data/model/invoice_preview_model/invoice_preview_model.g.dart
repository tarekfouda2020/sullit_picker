// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_preview_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoicePreviewModelImpl _$$InvoicePreviewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InvoicePreviewModelImpl(
      total: json['total'] as String,
      subtotal: json['subtotal'] as String,
      tax: json['tax'] as String,
    );

Map<String, dynamic> _$$InvoicePreviewModelImplToJson(
        _$InvoicePreviewModelImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'subtotal': instance.subtotal,
      'tax': instance.tax,
    };
