
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/subscription/subscription_controller.dart';
import 'package:flutter_tdd/res.dart';

import 'subscription_widgets_imports.dart';

class AgreeTermsConditions extends StatelessWidget {
  final SubscriptionController controller;
  const AgreeTermsConditions({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ObsValueConsumer(
            observable:controller.acceptTerms,
            builder: (context, value) {
              return GestureDetector(
                onTap: () => controller.toggleTermsAcceptance(),
                child: Container(
                  width: 20, height: 20,
                  padding: EdgeInsetsDirectional.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: value
                          ?context.colors.primary
                          :context.colors.gray58
                    ),
                    color: value
                        ?context.colors.primary
                        :Colors.transparent
                  ),
                  child: Visibility(
                      visible: value,
                      child: SvgPicture.asset(Res.checkIcon,
                      colorFilter: ColorFilter.mode(context.colors.white,  BlendMode.srcIn),
                      )
                  ),
                ),
              );
            },
        ),
        Gaps.hGap6,
        Text("Agree",
        style: AppTextStyle.s14_w400(color: context.colors.gray58),
        ),
        GestureDetector(
          onTap: (){},
          child: Text("Terms & Conditions",
            style: AppTextStyle.s14_w400(color: context.colors.black),
          ),
        ),
      ],
    );
  }
}
