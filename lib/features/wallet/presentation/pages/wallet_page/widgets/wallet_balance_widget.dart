
import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';

import '../wallet_imports.dart';

class WalletBalanceWidget extends StatelessWidget {
  final WalletController controller;
  const WalletBalanceWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    var userData = context.read<UserCubit>().state.model!;
    return GradientContainerWidget(
      padding: const EdgeInsetsDirectional.only(start: 17,bottom: 19,top: 25,end: 17),
        child: Column(
          children: [
            Row(
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
                      Translate.of(context).total_wallet_balance,
                      style: AppTextStyle.s16_w400(color: context.colors.white),
                    ),
                    _walletBalance(context),
                  ],
                ),
                Gaps.hGap32,
              ],
            ),
            Gaps.vGap10,
            Visibility(
              // visible: userData.isFreelancer,
              visible: false,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                decoration: BoxDecoration(
                  color: context.colors.white.withAlpha(30),
                  borderRadius: Dimens.borderRadius12PX,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your Commission',
                            style: AppTextStyle.s13_w400(color: context.colors.white),
                          ),
                          Gaps.vGap6,
                          Text(
                            '${367} AED',
                            style: AppTextStyle.s20_w800(color: context.colors.gold),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: ()=> controller.balanceWithdrawSheet(context),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 12),
                        decoration: BoxDecoration(
                          color: context.colors.darkRed,
                          borderRadius: Dimens.borderRadius30PX,
                        ),
                        child: Text(
                          'Withdraw Request',
                          style: AppTextStyle.s14_w600(color: context.colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )
    );
  }



  Widget _walletBalance(BuildContext context){
    String walletBalance = context.select<UserCubit,String>((value) =>value.state.model?.walletBalance ?? "");
    return Text(
      walletBalance.parseCurrency,
      style: AppTextStyle.s28_w800(color: context.colors.gold),
    );
  }


} 