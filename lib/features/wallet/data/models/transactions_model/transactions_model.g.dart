// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionsModelImpl _$$TransactionsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionsModelImpl(
      id: (json['id'] as num).toInt(),
      type: json['type'] as String,
      amount: json['amount'] as String,
      typeLabel: json['type_label'] as String,
      sourceType: json['source_type'] as String,
      sourceTypeLabel: json['source_type_label'] as String,
      referenceNo: json['reference_no'] as String,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$TransactionsModelImplToJson(
        _$TransactionsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'amount': instance.amount,
      'type_label': instance.typeLabel,
      'source_type': instance.sourceType,
      'source_type_label': instance.sourceTypeLabel,
      'reference_no': instance.referenceNo,
      'created_at': instance.createdAt,
    };
