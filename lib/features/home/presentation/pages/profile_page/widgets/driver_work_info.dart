import 'package:flutter_tdd/core/constants/dimens.dart';

import 'driver_wallet_balance_widget.dart';
import 'profile_page_widgets_imports.dart';

class DriverWorkInfo extends StatelessWidget {
  final ProfilePageController controller;
  const DriverWorkInfo({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    var userData = context.read<UserCubit>().state.model;
    return Column(
      children: [
        Gaps.vGap20,
        _buildContainer(
          context,
        child: Text("ID : #${userData!.id}",
        style: AppTextStyle.s16_w700(color: context.colors.primary),
        )
        ),
        Gaps.vGap8,
        _buildContainer(
            context,
            child: Row(
              children: [
                Text(Translate.of(context).work_for,
                style: const AppTextStyle.s12_w400(color: Color(0xff2E353A)),
                ),
                Gaps.hGap7,
                Expanded(
                  child: Text("Sulite Store , Ali’s Store",
                    style: AppTextStyle.s14_w700(color: context.colors.primary),
                  ),
                ),
              ],
            )
        ),
        Gaps.vGap16,
         DriverWalletBalanceWidget(controller: controller)
      ],
    );
  }

  Container _buildContainer(BuildContext context,{required Widget child}) {
    return Container(
        height: 42,
        padding: const EdgeInsetsDirectional.only(start: 18),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: context.colors.lightBackground,
          borderRadius: Dimens.borderRadius30PX,
        ),
      child: child,
      );
  }
}
