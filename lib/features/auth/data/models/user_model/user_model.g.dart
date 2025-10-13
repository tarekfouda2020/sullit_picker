// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      token: json['token'] as String,
      tokenType: json['token_type'] as String,
      avatar: json['avatar'] as String,
      isAvailable: json['is_available'] as bool,
      sellerName: json['seller_name'] as String,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'name': instance.name,
      'email': instance.email,
      'token': instance.token,
      'token_type': instance.tokenType,
      'avatar': instance.avatar,
      'is_available': instance.isAvailable,
      'seller_name': instance.sellerName,
    };
