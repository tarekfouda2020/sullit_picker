import 'package:flutter_tdd/features/wallet/data/enum/wallet_transaction_type.dart';

import 'wallet_imports.dart';

class WalletController {

  final List<WalletTransactionType> transactions = [
    WalletTransactionType.collected,
    WalletTransactionType.deposited,
    WalletTransactionType.collected,
    WalletTransactionType.deposited
  ];


}


