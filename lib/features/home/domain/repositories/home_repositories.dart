

import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/home/data/model/available_for_order_model/available_for_order_model.dart';
import 'package:flutter_tdd/features/home/domain/entity/update_profile_image_params.dart';

abstract class HomeRepositories {

  Future<MyResult<UserModel>> getProfile();

  Future<MyResult<UserModel>> updateProfileImage(UpdateProfileImageParams params);

  Future<MyResult<AvailableForOrderModel>> updateAvailability();


}