import 'package:flutter_tdd/features/wallet/data/enum/wallet_transaction_type.dart';

import '../wallet_imports.dart';

class WalletTransactionCard extends StatelessWidget {
  final WalletTransactionType type;

  const WalletTransactionCard({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.fromSTEB(19, 16, 24, 16),
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius12PX,
        border: Border.all(color: context.colors.borderLight, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            type == WalletTransactionType.collected ? 'Collected' : 'Deposited',
            style: AppTextStyle.s14_w600(
              color: type == WalletTransactionType.collected ? context.colors.green : context.colors.primary,
            ),
          ),
          Gaps.vGap12,
          Text(
            type == WalletTransactionType.collected ? '${250} AED' : '${-250} AED',
            style: AppTextStyle.s22_w600(
              color: context.colors.primary,
            ),
          ),
          Gaps.vGap12,
          Row(
            children: [
              Expanded(
                child: Text(
                  type == WalletTransactionType.collected ? 'Order no : #545757' : 'Transaction no : #545757',
                  style: AppTextStyle.s14_w700(color: context.colors.textPrimary),
                ),
              ),
              Text(
                "1 Hour Ago",
                style: AppTextStyle.s13_w400(color: context.colors.gray3),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
