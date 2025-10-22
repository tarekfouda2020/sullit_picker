import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/home/data/data_source/home_data_source.dart';
import 'package:flutter_tdd/features/home/data/model/available_for_order_model/available_for_order_model.dart';
import 'package:flutter_tdd/features/home/data/model/lang_model/lang_model.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/domain/entity/orders_params.dart';
import 'package:flutter_tdd/features/home/domain/entity/update_profile_image_params.dart';
import 'package:flutter_tdd/features/home/domain/repositories/home_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeRepositories)
class ImplHomeRepositories extends HomeRepositories{

  var dataSource = getIt<HomeDataSource>();
  @override
  Future<MyResult<UserModel>> getProfile() {
   return dataSource.getProfile();
  }

  @override
  Future<MyResult<UserModel>> updateProfileImage(UpdateProfileImageParams params) {
   return dataSource.updateProfileImage(params);
  }

  @override
  Future<MyResult<List<LangModel>>> getLanguages(bool params) {
   return dataSource.getLanguages(params);
  }

  @override
  Future<MyResult<OrdersList?>> orders(bool params) {
   return dataSource.orders(params);
  }

  @override
  Future<MyResult<AvailableForOrderModel>> updateAvailability() {
    return dataSource.updateAvailability();
  }

  @override
  Future<MyResult<OrderModel>> showOrders(OrdersParams params) {
   return dataSource.showOrders(params);
  }

  @override
  Future<MyResult<OrderModel>> acceptOrder(OrdersParams params) {
   return dataSource.acceptOrder(params);
  }

}