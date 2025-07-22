
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/confirm_reset_password/widgets/reset_password_form_widget.dart';
import 'package:flutter_tdd/res.dart';

import 'confirm_reset_password_imports.dart';

@RoutePage(name: "ConfirmResetPasswordPageRoute")
class ConfirmResetPassword extends StatefulWidget {
  final String email;
  const ConfirmResetPassword({super.key, required this.email});

  @override
  State<ConfirmResetPassword> createState() => _ConfirmResetPasswordState();
}

class _ConfirmResetPasswordState extends State<ConfirmResetPassword> {

  late final ConfirmResetPasswordController controller;

  @override
  void initState() {
    super.initState();
   controller = ConfirmResetPasswordController(widget.email);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: context.colors.background,
        appBar:  const DefaultAppBar(title: "", showBack: true,bgColor: Colors.transparent),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.dp24),
          child: Column(
            children: [
              Image.asset(Res.forgetPassBackground,height: 250,width: 250,),
              Text(
               "Reset your password",
                style: AppTextStyle.s22_w700(color: context.colors.black),
              ),
              Gaps.vGap12,
              Text(
                "Enter your code to reset your password",
                style: AppTextStyle.s16_w400(color: context.colors.gray58),
              ),
              Gaps.vGap44,
              ResetPasswordFormWidget(controller: controller),
              Gaps.vGap32,
              AppTextButton.maxPrimary(
                text: "Send",
                onPressed: () => controller.onPressSend(context),
              ),
              Gaps.vGap28,
            ],
          ),
        ),
      ),
    );
  }
}
