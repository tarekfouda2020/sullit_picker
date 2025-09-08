import 'package:flutter_tdd/features/orders/domain/entity/generic_pagin_params.dart';

class OrderHistoryParams {
  final String? fromDate;
  final String? toDate;
  final GenericPaginateParams paginateParams;

  OrderHistoryParams({
    required this.paginateParams,
    this.fromDate,
    this.toDate,
  });

  String get url {
    String header = paginateParams.paramsToQuery();
    if (fromDate != null) {
      header = "$header&from_date=$fromDate";
    }
    if (toDate != null) {
      header = "$header&to_date=$toDate";
    }
    return header;
  }
}
