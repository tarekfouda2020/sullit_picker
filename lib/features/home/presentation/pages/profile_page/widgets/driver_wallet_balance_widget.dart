import 'package:flutter_tdd/core/widgets/app_button.dart';
import 'package:flutter_tdd/core/widgets/gradient_container_widget.dart';

import 'profile_page_widgets_imports.dart';

class DriverWalletBalanceWidget extends StatelessWidget {
  final ProfilePageController controller;
  const DriverWalletBalanceWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GradientContainerWidget(
        padding: const EdgeInsets.fromLTRB(17, 25, 16, 18),
        // height: 162,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              Res.walletImage,
              width: 56,
              height: 41,
            ),
            Expanded(
              child: Column(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Wallet Balance",
                    style: AppTextStyle.s16_w400(color: context.colors.white),
                  ),
                  Text(
                    "500 AED",
                    style: AppTextStyle.s28_w800(color: context.colors.gold),
                  ),
                  SizedBox(
                    width: 190,
                    child: AppTextButton.minCustom(
                      text: "View Wallet Details",
                      onPressed: () => controller.navigateToWallet(context) ,
                      bgColor: context.colors.white,
                      txtColor: context.colors.primary,
                      textSize: 14,
                      textFontWeight: FontWeight.w400,
                      maxHeight: 36,
                    ),
                  )
                ],
              ),
            ),
            Gaps.hGap23,
          ],
        ));
  }
}
