// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      id: (json['id'] as num).toInt(),
      code: json['code'] as String,
      status: json['status'] as String,
      customerName: json['customer_name'] as String,
      customerPhone: json['customer_phone'] as String,
      paymentMethod: json['payment_method'] as String,
      paymentMethodLabel: json['payment_method_label'] as String,
      paymentStatus: json['payment_status'] as String,
      paymentStatusLabel: json['payment_status_label'] as String,
      orderAmount: json['order_amount'] as String,
      statusLabel: json['status_label'] as String,
      recivingFrom: json['reciving_from'] as String,
      driverAmount: json['driver_amount'] as String,
      distanceKm: (json['distance_km'] as num).toInt(),
      createdAt: json['created_at'] as String,
      deliveredAt: json['delivered_at'] as String,
      assignedAt: json['assigned_at'] as String,
      reportReason: json['report_reason'] as String,
      storeDistance: json['store_disctance'] as String?,
      customerAddress: json['customer_address'] == null
          ? null
          : CustomerAddress.fromJson(
              json['customer_address'] as Map<String, dynamic>),
      histories: (json['histories'] as List<dynamic>?)
          ?.map((e) => OrderHistoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      store: json['store'] == null
          ? null
          : OrderStoreModel.fromJson(json['store'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'status': instance.status,
      'customer_name': instance.customerName,
      'customer_phone': instance.customerPhone,
      'payment_method': instance.paymentMethod,
      'payment_method_label': instance.paymentMethodLabel,
      'payment_status': instance.paymentStatus,
      'payment_status_label': instance.paymentStatusLabel,
      'order_amount': instance.orderAmount,
      'status_label': instance.statusLabel,
      'reciving_from': instance.recivingFrom,
      'driver_amount': instance.driverAmount,
      'distance_km': instance.distanceKm,
      'created_at': instance.createdAt,
      'delivered_at': instance.deliveredAt,
      'assigned_at': instance.assignedAt,
      'report_reason': instance.reportReason,
      'store_disctance': instance.storeDistance,
      'customer_address': instance.customerAddress,
      'histories': instance.histories,
      'store': instance.store,
    };

_$CustomerAddressImpl _$$CustomerAddressImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerAddressImpl(
      addressDetails: json['address_details'] as String,
      state: json['state'] as String,
      city: json['city'] as String,
      streetName: json['street_name'] as String,
      buildingName: json['building_name'] as String,
      flatNo: json['flat_no'] as String,
      lat: json['lat'] as String,
      lng: json['lng'] as String,
      mapDesc: json['map_desc'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$$CustomerAddressImplToJson(
        _$CustomerAddressImpl instance) =>
    <String, dynamic>{
      'address_details': instance.addressDetails,
      'state': instance.state,
      'city': instance.city,
      'street_name': instance.streetName,
      'building_name': instance.buildingName,
      'flat_no': instance.flatNo,
      'lat': instance.lat,
      'lng': instance.lng,
      'map_desc': instance.mapDesc,
      'phone': instance.phone,
    };

_$OrderHistoryModelImpl _$$OrderHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderHistoryModelImpl(
      id: (json['id'] as num).toInt(),
      status: json['status'] as String,
      statusLabel: json['status_label'] as String,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$OrderHistoryModelImplToJson(
        _$OrderHistoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'status_label': instance.statusLabel,
      'created_at': instance.createdAt,
    };

_$OrderStoreModelImpl _$$OrderStoreModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderStoreModelImpl(
      id: (json['id'] as num).toInt(),
      storeName: json['store_name'] as String,
      email: json['email'] as String,
      lat: json['lat'] as String,
      lng: json['lng'] as String,
    );

Map<String, dynamic> _$$OrderStoreModelImplToJson(
        _$OrderStoreModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'store_name': instance.storeName,
      'email': instance.email,
      'lat': instance.lat,
      'lng': instance.lng,
    };
