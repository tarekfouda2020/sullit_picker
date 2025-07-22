

import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';

abstract class HomeRepositories {

  Future<MyResult<UserModel>> getProfile();


}