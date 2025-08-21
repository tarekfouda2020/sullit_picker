import 'package:flutter_tdd/features/wallet/domain/entity/charge_wallet_params.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/wallet/data/data_source/wallet_data_source.dart';
import 'package:flutter_tdd/features/wallet/data/models/transactions_model/transactions_model.dart';
import 'package:flutter_tdd/features/wallet/domain/entity/transactions_params.dart';
import 'package:flutter_tdd/features/wallet/domain/repositories/wallet_repositories.dart';

@Injectable(as: WalletRepositories)
class ImplWalletRepositories extends WalletRepositories {
  final WalletDataSource _dataSource = getIt<WalletDataSource>();

  @override
  Future<MyResult<List<TransactionsModel>>> transactions(TransactionsParams params) {
    return _dataSource.transactions(params);
  }

  @override
  Future<MyResult<String>> chargeWallet(ChargeWalletParams params) {
    return _dataSource.chargeWallet(params);
  }
} 