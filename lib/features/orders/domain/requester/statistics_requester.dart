
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/orders/data/models/statistics_model/statistics_model.dart';
import 'package:flutter_tdd/features/orders/domain/entity/statistics_params.dart';
import 'package:flutter_tdd/features/orders/domain/repositories/orders_repositories.dart';

class StatisticsRequester extends Requester<StatisticsModel>{
  final int? sellerId;
  StatisticsRequester({this.sellerId});

  @override
  Future<void> request({bool fromRemote = true}) async{
    var params = _params(fromRemote);
    var result = await getIt<OrdersRepositories>().getStatistics(params);
    result.when(
      isSuccess: (data) {
      successState(data!);
    },
      isError: (error) {

    },);
  }



  StatisticsParams _params(bool fromRemote) {
    return StatisticsParams(
        refresh: fromRemote,
      sellerId: sellerId
    );
  }

}