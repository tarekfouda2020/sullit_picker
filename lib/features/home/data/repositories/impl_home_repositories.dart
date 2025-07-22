

import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/home/data/data_source/home_data_source.dart';
import 'package:flutter_tdd/features/home/domain/repositories/home_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeRepositories)
class ImplHomeRepositories extends HomeRepositories{

  var dataSource = getIt<HomeDataSource>();
  @override
  Future<MyResult<UserModel>> getProfile() {
   return dataSource.getProfile();
  }

}