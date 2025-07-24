
import '../wallet_imports.dart';

class WalletTransactionCard extends StatelessWidget {
  final TransactionsModel model;
  const WalletTransactionCard({
    super.key,
    required this.model,
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
            model.typeLabel,
            style: AppTextStyle.s14_w600(
              color: model.isCollected ? context.colors.green : context.colors.primary,
            ),
          ),
          Gaps.vGap12,
          Text(
            model.isCollected ? model.amount : '-${model.amount}',
            style: AppTextStyle.s22_w600(
              color: context.colors.primary,
            ),
          ),
          Gaps.vGap12,
          Row(
            children: [
              Expanded(
                child: Text(
                  model.referenceNo,
                  style: AppTextStyle.s14_w700(color: context.colors.textPrimary),
                ),
              ),
              Text(
                model.createdAt,
                style: AppTextStyle.s13_w400(color: context.colors.gray3),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
