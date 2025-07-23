import 'change_password_imports.dart';

@RoutePage(name: "ChangePasswordPageRoute")
class ChangePassword extends StatefulWidget {
  
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  
  final ChangePasswordController controller = ChangePasswordController();
  
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: const DefaultAppBar(title: "",),
        body: SingleChildScrollView(
          padding: Dimens.paddingH20Px,
          child: Column(
            spacing: 40,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: AppSloganWidget(),
              ),
              Text(Translate.of(context).change_password,style: AppTextStyle.s22_w700(color: context.colors.black),),
              ChangePasswordFormWidget(controller: controller),
              AppTextButton.maxPrimary(
                text: Translate.of(context).save,
                onPressed: ()=> controller.callChangePassword(context),
              ),
              Gaps.vGap30,
            ],
          ),
        ),
      ),
    );
  }
}
