import 'package:flutter_tdd/features/orders/domain/entity/generic_pagin_params.dart';
import 'package:flutter_tdd/features/wallet/data/enum/transaction_period_enum.dart';

class TransactionsParams {
  final int? sellerId;
  final String? fromDate;
  final String? toDate;
  final GenericPaginateParams paginateParams;

  TransactionsParams({
     this.sellerId,
     required  this.paginateParams,
     required  this.fromDate,
     required  this.toDate,
  });


  String get url {
    String header = paginateParams.paramsToQuery();
    if(sellerId!=null){
      header = "$header&seller_id=$sellerId";
    }
    if(fromDate != null){
      header = "$header&from_date=$fromDate";
    }
    if(toDate!=null){
      header = "$header&to_date=$toDate";
    }
    return header;
  }

}
