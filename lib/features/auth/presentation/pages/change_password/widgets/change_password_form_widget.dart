import 'change_password_widgets_imports.dart';


class ChangePasswordFormWidget extends StatelessWidget {
  final ChangePasswordController controller;
  const ChangePasswordFormWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
        child: Column(
          spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AuthSectionTitleWidget(title: "Current Password"),
        ObsValueConsumer(
            observable: controller.oldPasswordVisibleObs,
            builder: (context,isVisible) {
              return GenericTextField(
                controller: controller.oldPasswordController,
                fieldTypes: isVisible ? FieldTypes.normal : FieldTypes.password,
                type: TextInputType.text,
                action: TextInputAction.done,
                fillColor: Colors.white,
                margin: Dimens.paddingBottom12,
                validate: (value) => value?.validatePassword(),
                hint: Translate.of(context).enter_your_password,
                suffixIcon: GestureDetector(
                  onTap: () => controller.switchPasswordVisibility(controller.oldPasswordVisibleObs),
                  child: Icon(
                    isVisible ?Icons.visibility_outlined : Icons.visibility_off_outlined,
                    color: context.colors.hintText,
                    size: 20,
                  ),
                ),
              );
            }
        ),
        const AuthSectionTitleWidget(title: "New Password"),
        ObsValueConsumer(
            observable: controller.newPasswordVisibleObs,
            builder: (context,isVisible) {
              return GenericTextField(
                controller: controller.newPasswordController,
                fieldTypes: isVisible ? FieldTypes.normal : FieldTypes.password,
                type: TextInputType.text,
                action: TextInputAction.done,
                fillColor: Colors.white,
                margin: Dimens.paddingBottom12 ,
                validate: (value) => value?.validatePassword(),
                hint: Translate.of(context).enter_your_password,
                suffixIcon: GestureDetector(
                  onTap: () => controller.switchPasswordVisibility(controller.newPasswordVisibleObs),
                  child: Icon(
                    isVisible ?Icons.visibility_outlined : Icons.visibility_off_outlined,
                    color: context.colors.hintText,
                    size: 20,
                  ),
                ),
              );
            }
        ),
        const AuthSectionTitleWidget(title: "Confirm New Password"),
        ObsValueConsumer(
            observable: controller.confirmPasswordVisibleObs,
            builder: (context,isVisible) {
              return GenericTextField(
                controller: controller.confirmPasswordController,
                fieldTypes: isVisible ? FieldTypes.normal : FieldTypes.password,
                type: TextInputType.text,
                action: TextInputAction.done,
                fillColor: Colors.white,
                validate: (value) => value?.validatePasswordConfirm(pass: controller.newPasswordController.text),
                hint: Translate.of(context).enter_your_password,
                suffixIcon: GestureDetector(
                  onTap: () => controller.switchPasswordVisibility(controller.confirmPasswordVisibleObs),
                  child: Icon(
                    isVisible ?Icons.visibility_outlined : Icons.visibility_off_outlined,
                    color: context.colors.hintText,
                    size: 20,
                  ),
                ),
              );
            }
        ),
      ],
    ));
  }
}
