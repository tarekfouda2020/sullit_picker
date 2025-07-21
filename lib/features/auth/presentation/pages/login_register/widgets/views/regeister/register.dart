import 'package:flutter_tdd/features/auth/presentation/pages/login_register/widgets/views/regeister/widgets/driver_id_and_licensee_widget.dart';

import 'register_imports.dart';
import 'widgets/driver_passwords_widget.dart';
import 'widgets/driver_private_fields_widget.dart';
import 'widgets/select_work_type_widget.dart';


class RegisterView extends StatefulWidget {
  final LoginRegisterController loginRegisterController;
  const RegisterView({super.key, required this.loginRegisterController});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {

  final RegisterController controller = RegisterController();

  @override
  void initState() {
    super.initState();
    controller.loginRegisterCtr = widget.loginRegisterController;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
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