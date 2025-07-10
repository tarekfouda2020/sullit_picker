import 'wallet_imports.dart';

@RoutePage(name: "WalletPageRoute")
class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = WalletController();
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: DefaultAppBar(
        title: "Wallet",
        bgColor: context.colors.background,
      ),
      body: Padding(
        padding: Dimens.paddingH20Px,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gaps.vGap16,
            WalletFilterWidget(controller: controller),
            Gaps.vGap16,
            WalletBalanceWidget(controller: controller),
            Gaps.vGap20,
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Transactions",
                    style: AppTextStyle.s20_w700(color: context.colors.textPrimary),
                  ),
                ),
                Text(
                  "Last Week",
                  style: AppTextStyle.s14_w400(color: context.colors.gray3),
                ),
                Gaps.hGap6,
                SvgPicture.asset(Res.invertedTriangle),
              ],
            ),
            Gaps.vGap12,
            Expanded(
              child: ListView.builder(
                itemCount: controller.transactions.length,
                itemBuilder: (context, index) => WalletTransactionCard(
                  type: controller.transactions[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
} 