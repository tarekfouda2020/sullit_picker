import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

import '../login_register_imports.dart';


class AuthPageTitle extends StatelessWidget {
  final LoginRegisterController controller;
  const AuthPageTitle({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return   Center(
      child: ObsValueConsumer(
        observable: controller.currentTabObs,
        builder: (context, currentTab) {
          return Column(
            children: [
              Text(
                currentTab == 0 ? S.of(context).login : S.of(context).register,
                style: AppTextStyle.s24_w700(color: context.colors.textDark),
              ),
              Gaps.vGap8,
              Visibility(
                visible: currentTab == 1,
                replacement: Gaps.vGap10,
                child: Text(
                  S.of(context).register_subtitle,
                  style: AppTextStyle.s14_w400(color: context.colors.textSubtle),
                ),
              ),

            ],
          );
        },
      ),
    );
  }
}
