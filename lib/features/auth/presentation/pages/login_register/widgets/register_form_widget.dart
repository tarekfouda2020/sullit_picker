import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/LoadingButton.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/login_register/login_register_imports.dart';


class RegisterFormWidget extends StatelessWidget {
  final LoginRegisterController controller;

  const RegisterFormWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.registerFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DriverPrivateFieldsWidget(controller: controller),
          Gaps.vGap24,
           DriverIdAndLicenseeWidget(controller: controller),
          Gaps.vGap12,
          AuthSectionTitleWidget(title: Translate.s.how_you_want_to_work),
          SelectWorkTypeWidget(controller: controller),
          Gaps.vGap2,
          AuthSectionTitleWidget(
            title: Translate.s.password,
          ),
          DriverPasswordsWidget(controller: controller),
          Center(
            child: LoadingButton(
              title: Translate.of(context).register,
              onTap: () => controller.register(context),
              btnKey: controller.registerLoadingButtonKey,
              margin: const EdgeInsets.only(top: 33),
            ),
          ), // Bottom padding
        ],
      ),
    );
  }
}
