import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/home/data/data_source/home_data_source.dart';
import 'package:flutter_tdd/features/home/data/model/available_for_order_model/available_for_order_model.dart';
import 'package:flutter_tdd/features/home/data/model/lang_model/lang_model.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/data/model/search_barcode_model/search_barcode_model.dart';
import 'package:flutter_tdd/features/home/domain/entity/orders_params.dart';
import 'package:flutter_tdd/features/home/domain/entity/prepare_order_params.dart';
import 'package:flutter_tdd/features/home/domain/entity/replaced_product_params.dart';
import 'package:flutter_tdd/features/home/domain/entity/update_profile_image_params.dart';
import 'package:flutter_tdd/features/home/domain/repositories/home_repositories.dart';
import 'package:flutter_tdd/features/notifications/domain/entity/generic_pagin_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeRepositories)
class ImplHomeRepositories extends HomeRepositories  {
  var dataSource = getIt<HomeDataSource>();

  @override
  Future<MyResult<UserModel>> getProfile() async {
    return dataSource.getProfile();
  }

  @override
  Future<MyResult<UserModel>> updateProfileImage(UpdateProfileImageParams params) async {
    return dataSource.updateProfileImage(params);
  }

  @override
  Future<MyResult<List<LangModel>>> getLanguages(bool params) async {
    return dataSource.getLanguages(params);
  }

  @override
  Future<MyResult<OrdersList?>> orders(bool params) async {
    return dataSource.orders(params);
  }

  @override
  Future<MyResult<AvailableForOrderModel>> updateAvailability() async {
    return dataSource.updateAvailability();
  }

  @override
  Future<MyResult<OrderModel>> showOrders(OrdersParams params) async {
    return dataSource.showOrders(params);
  }

  @override
  Future<MyResult<OrderModel>> acceptOrder(OrdersParams params) async {
    return dataSource.acceptOrder(params);
  }

  @override
  Future<MyResult<OrderModel>> cancelOrder(int id) async {
    return dataSource.cancelOrder(id);
  }

  @override
  Future<MyResult<SearchBarcodeModel>> searchByBarcode(ReplacedProductParams params) async {
    return dataSource.searchByBarcode(params);
  }

  @override
  Future<MyResult<OrderModel>> prepareOrder(PrepareOrderParams params) async {
    return dataSource.prepareOrder(params);
  }

  @override
  Future<MyResult<List<OrderModel>>> getPreviousOrders(GenericPaginateParams params) async {
    return dataSource.getPreviousOrders(params);
  }
}
