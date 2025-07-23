import 'forget_password_imports.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

@RoutePage(name: "ForgetPasswordPageRoute")
class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  final ForgetPasswordController controller = ForgetPasswordController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: context.colors.background,
        appBar:  DefaultAppBar(title: "", showBack: true,bgColor: context.colors.background),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Image.asset(Res.forgetPassBackground,height: 250,width: 250,),
              Text(
                Translate.of(context).forgot_password_question,
                style: AppTextStyle.s22_w700(color: context.colors.black),
              ),
              Gaps.vGap12,
              Text(
                Translate.of(context).enter_email_to_recover,
                style: AppTextStyle.s16_w400(color: context.colors.gray58),
              ),
              Gaps.vGap44,
              Row(
                children: [
                   AuthSectionTitleWidget(title: Translate.s.e_mail),
                ],
              ),
              ForgetFormWidget(controller: controller),
              Gaps.vGap28,
              LoadingButton(
                  title: Translate.of(context).send,
                  onTap: ()=> controller.resetCode(context),
                  btnKey: controller.loadingButtonKey,
                margin: EdgeInsets.zero,
              ),
              Gaps.vGap36,
              GestureDetector(
                onTap: () => AutoRouter.of(context).maybePop(),
                child: Text(
                  Translate.of(context).back_to_login,
                  style: AppTextStyle.s16_w700(color: context.colors.primary),
                ),
              ),
              Gaps.vGap64,
            ],
          ),
        ),
      ),
    );
  }
}