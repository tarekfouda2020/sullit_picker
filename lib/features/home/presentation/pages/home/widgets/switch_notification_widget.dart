
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/home_controller.dart';

import '../../profile_page/profile_page_imports.dart';

class SwitchNotificationWidget extends StatelessWidget {
  final HomeController controller;
  const SwitchNotificationWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection:  TextDirection.rtl,
      child: FlutterSwitch(
        inactiveColor: context.colors.gray58,
        activeColor: context.colors.primary,
        toggleColor: context.colors.green.withValues(alpha: 30),
        inactiveToggleColor: context.colors.white,
        toggleSize: 16,
        width: 30,
        height: 18,
        padding: 1,
        activeToggleColor:context.colors.white,
        value: controller.availableForOrdersObs.getValue(),
        onToggle: (newValue)=> controller.updateAvailabilityStatus(context),
      ),
    );
  }




}
