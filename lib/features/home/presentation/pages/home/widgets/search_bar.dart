import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/home_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/switch_notification_widget.dart';
import 'package:flutter_tdd/res.dart';

class CustomSearchBar extends StatelessWidget {
  final HomeController controller;
  const CustomSearchBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 27),
      height: 50,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius30PX,
        border: Border.all(color: context.colors.inputBorder),
      ),
      child: ObsValueConsumer(
        observable: controller.availableForOrdersObs,
        builder: (context,isOnline) {
          return Row(
            children: [
              Expanded(
                child: Text(
                  isOnline?
                  Translate.of(context).available_for_receiving_orders
                      :Translate.of(context).not_available_for_receiving_orders,
                  style: AppTextStyle.s12_w400(color: context.colors.textPrimary),
                ),
              ),
              SwitchNotificationWidget(controller: controller),
            ],
          );
        }
      ),
    );
  }
}
