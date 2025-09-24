import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';
import 'package:flutter_tdd/features/wallet/data/enum/wallet_transaction_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transactions_model.freezed.dart';

part 'transactions_model.g.dart';

@freezed
class TransactionsModel with _$TransactionsModel {
  const TransactionsModel._();

  @JsonSerializable(explicitToJson: true)
  factory TransactionsModel({
    required int id,
    required String type,
    required String amount,
    @JsonKey(name: "type_label") required String typeLabel,
    @JsonKey(name: "source_type") required String sourceType,
    @JsonKey(name: "source_type_label") required String sourceTypeLabel,
    @JsonKey(name: "reference_no") required String referenceNo,
    @JsonKey(name: "created_at") required String createdAt,
  }) = _TransactionsModel;

  factory TransactionsModel.fromJson(Map<String, dynamic> json) => _$TransactionsModelFromJson(json);


  bool get isDeposited => getTransactionType() == WalletTransactionType.deposited;
  bool get isCollected => getTransactionType() == WalletTransactionType.collected;
  // String get getAmount => amount.parseCurrency;
  String get getAmount => amount;

  WalletTransactionType getTransactionType() {
    switch(type){
      case "deposited": return WalletTransactionType.deposited;
      case "collected": return WalletTransactionType.collected;
      default: return WalletTransactionType.deposited;
    }
  }


}
