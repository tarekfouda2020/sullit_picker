import 'package:flutter_tdd/features/wallet/data/enum/transaction_period_enum.dart';

class TransactionsParams {
  final int? sellerId;
  final TransactionPeriodEnum? transactionTime;
  final int page;

  TransactionsParams({
     this.sellerId,
     this.transactionTime,
     required  this.page,
  });


  String get url {
    String header = "?page=$page";
    if(sellerId!=null){
      header = "$header&seller_id=$sellerId";
    }
    if(transactionTime != null){
      header = "$header&period=${transactionTime!.header}";
    }
    return header;
  }

}
