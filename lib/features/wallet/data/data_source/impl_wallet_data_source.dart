// ignore_for_file: avoid_dynamic_calls


import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/wallet/data/models/transactions_model/transactions_model.dart';
import 'package:flutter_tdd/features/wallet/domain/entity/charge_wallet_params.dart';
import 'package:flutter_tdd/features/wallet/domain/entity/transactions_params.dart';
import 'package:injectable/injectable.dart';

import 'wallet_data_source.dart';

@Injectable(as: WalletDataSource)
class ImplWalletDataSource extends WalletDataSource{

  @override
  Future<MyResult<List<TransactionsModel>>> transactions(TransactionsParams params) {
    final model = HttpRequestModel(
      url: ApiNames.transactions + params.url,
      responseType: ResType.list,
      requestMethod: RequestMethod.get,
      toJsonFunc: (data) => List<TransactionsModel>.from(data.map((e) => TransactionsModel.fromJson(e))),
      responseKey: (data) => data["data"]["transactions"],
    );
    return GenericHttpImpl<List<TransactionsModel>>()(model);
  }

  @override
  Future<MyResult<String>> chargeWallet(ChargeWalletParams params) {
    final model = HttpRequestModel(
    url: ApiNames.walletRecharge,
    responseType: ResType.type,
    requestMethod: RequestMethod.post,
    requestBody: params.toJson(),
    showLoader: true,
    isFormData: true,
    responseKey: (data) => data["data"]["transaction_url"],
    );
    return GenericHttpImpl<String>()(model);
  }



}