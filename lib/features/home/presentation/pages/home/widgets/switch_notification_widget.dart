
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/home_controller.dart';

import '../../../../../auth/presentation/pages/login_register/login_register_imports.dart';
import '../../profile_page/profile_page_imports.dart';

class SwitchNotificationWidget extends StatelessWidget {
  final HomeController controller;
  const SwitchNotificationWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
      observable: controller.availableForOrdersObs,
      builder: (context, online) {
        return FlutterSwitch(
          inactiveColor: context.colors.gray58,
          activeColor: context.colors.primary,
          toggleColor: context.colors.lightPrimary,
          inactiveToggleColor: context.colors.white,
          toggleSize: 16,
          width: 30,
          height: 18,
          padding: 1,
          value: online,
          onToggle: (newValue)=> controller.updateAvailabilityStatus(context),
        );
      },
    );
  }
}
