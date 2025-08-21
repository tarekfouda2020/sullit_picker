import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/wallet/data/models/transactions_model/transactions_model.dart';
import 'package:flutter_tdd/features/wallet/domain/entity/charge_wallet_params.dart';
import 'package:flutter_tdd/features/wallet/domain/entity/transactions_params.dart';

abstract class WalletRepositories {
  Future<MyResult<List<TransactionsModel>>> transactions(TransactionsParams params);

  Future<MyResult<String>> chargeWallet(ChargeWalletParams params);
}