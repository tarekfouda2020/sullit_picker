import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/orders/data/models/store_model/store_model.dart';

class UserDomainModel extends BaseDomainModel {
  final String id;
  final String name;
  final String email;
  final String token;
  final String tokenType;
  final bool emailIsActive;
  final String countryCode;
  final String? phone;
  final String fullPhone;
  final String workType;
  final String mapDesc;
  final String lat;
  final String lng;
  final int coverageRadiusKm;
  final bool isAvailable;
  final String idImageFront;
  final String idImageBack;
  final String licenseImageFront;
  final String licenseImageBack;
  final bool hasSubscription;
  final bool hasActiveSubscription;
  final List<StoreModel>? stores;
  final String approveStatus;
  final String approveStatusLabel;
  final String walletBalance;

  UserDomainModel({
    required this.id,
    required this.name,
    required this.email,
    required this.token,
    required this.tokenType,
    required this.emailIsActive,
    required this.countryCode,
    required this.phone,
    required this.fullPhone,
    required this.workType,
    required this.mapDesc,
    required this.lat,
    required this.lng,
    required this.coverageRadiusKm,
    required this.isAvailable,
    required this.idImageFront,
    required this.idImageBack,
    required this.licenseImageFront,
    required this.licenseImageBack,
    required this.hasSubscription,
    required this.hasActiveSubscription,
    required this.stores,
    required this.approveStatus,
    required this.approveStatusLabel,
    required this.walletBalance,
  });
}

