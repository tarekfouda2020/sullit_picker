import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';
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
                    Translate.of(context).total_wallet_balance,
                    style: AppTextStyle.s16_w400(color: context.colors.white),
                  ),
                  _walletBalance(context),
                  SizedBox(
                    width: 190,
                    child: AppTextButton.minCustom(
                      text: Translate.of(context).view_wallet_details,
                      onPressed: () {} ,
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


  Widget _walletBalance(BuildContext context){
    String walletBalance = context.select<UserCubit,String>((value) =>value.state.model?.walletBalance ?? "");
   return Text(
     // walletBalance.parseCurrency,
     walletBalance,
     style: AppTextStyle.s28_w800(color: context.colors.gold),
   );
  }


}
