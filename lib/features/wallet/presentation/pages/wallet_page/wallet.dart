import 'package:flutter_tdd/features/wallet/presentation/pages/wallet_page/widgets/transactions_list_widget.dart';

import 'wallet_imports.dart';

@RoutePage(name: "WalletPageRoute")
class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {

  final WalletController controller = WalletController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: DefaultAppBar(
        title: Translate.of(context).wallet,
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
            ObsValueConsumer(
              observable: controller.selectedTransactionObs,
              builder: (context,value) {
                return Row(
                  children: [
                    Expanded(
                      child: Text(
                        Translate.of(context).transactions,
                        style: AppTextStyle.s20_w700(color: context.colors.textPrimary),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()=> controller.showTransactionsPeriodSheet(context),
                      child: Row(
                        children: [
                          Text(
                            value.getTitle,
                            style: AppTextStyle.s14_w400(color: context.colors.gray3),
                          ),
                          Gaps.hGap6,
                          SvgPicture.asset(Res.invertedTriangle),
                        ],
                      ),
                    ),

                  ],
                );
              }
            ),
            Gaps.vGap12,
            TransactionsListWidget(controller: controller),
          ],
        ),
      ),
    );
  }
}