import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/home/data/model/available_for_order_model/available_for_order_model.dart';
import 'package:flutter_tdd/features/home/data/model/lang_model/lang_model.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/data/model/report_reason_model/report_reason_model.dart';
import 'package:flutter_tdd/features/home/domain/entity/orders_params.dart';
import 'package:flutter_tdd/features/home/domain/entity/update_order_params.dart';
import 'package:flutter_tdd/features/home/domain/entity/update_profile_image_params.dart';
import 'package:flutter_tdd/features/orders/data/models/order_model/order_model.dart';

abstract class HomeDataSource {

  Future<MyResult<UserModel>> getProfile();

  Future<MyResult<UserModel>> updateProfileImage(UpdateProfileImageParams params);

  Future<MyResult<OrdersModel?>> orders(bool params);

  Future<MyResult<OrderItem>> showOrders(OrdersParams params);

  Future<MyResult<OrderItem>> acceptOrder(OrdersParams params);

  Future<MyResult<List<LangModel>>> getLanguages(bool params);

  Future<MyResult<AvailableForOrderModel>> updateAvailability();

}