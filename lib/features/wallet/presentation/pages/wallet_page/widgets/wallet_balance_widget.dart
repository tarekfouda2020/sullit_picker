import 'package:flutter_tdd/core/widgets/gradient_container_widget.dart';

import '../wallet_imports.dart';

class WalletBalanceWidget extends StatelessWidget {
  final WalletController controller;
  const WalletBalanceWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GradientContainerWidget(
      padding: const EdgeInsetsDirectional.only(start: 17,bottom: 19,top: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              Res.walletImage,
              width: 56,
              height: 41,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                Text(
                  'Total Wallet Balance',
                  style: AppTextStyle.s16_w400(color: context.colors.white),
                ),
                Text(
                  '${377} AED',
                  style: AppTextStyle.s28_w800(color: context.colors.gold),
                ),
              ],
            ),
            Gaps.hGap32,
          ],
        )
    );
  }
} 