part of 'register_imports.dart';

@RoutePage()
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final controller = RegisterController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: context.colors.primary),
          onPressed: () => AutoRouter.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: context.colors.primary,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Gaps.hGap8,
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: context.colors.primary,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                  Gaps.vGap16,
                  Text(
                    Translate.of(context).weideliver,
                    style: AppTextStyle.s24_w700(color: context.colors.primary),
                  ),
                  Gaps.vGap8,
                  Text(
                    Translate.of(context).label_register,
                    style: AppTextStyle.s18_w700(color: Colors.black),
                  ),
                  Gaps.vGap8,
                  Text(
                    Translate.of(context).register_subtitle,
                    style: AppTextStyle.s14_w400(color: Colors.grey),
                  ),
                ],
              ),
            ),
            
            Gaps.vGap32,
            
            // Login/Register Toggle
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => AutoRouter.of(context).pop(),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey.shade300,
                            width: 2,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          Translate.of(context).label_Login,
                          style: AppTextStyle.s16_w400(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: context.colors.primary,
                          width: 2,
                        ),
                      ),
                    ),
                    child: Center(
                                              child: Text(
                          Translate.of(context).label_register,
                          style: AppTextStyle.s16_w700(color: context.colors.primary),
                        ),
                    ),
                  ),
                ),
              ],
            ),
            
            Gaps.vGap32,
            
            // Form Fields
            RegisterTextFieldWidget(
              label: Translate.of(context).user_name,
              hint: Translate.of(context).enter_user_name,
              controller: controller.userNameController,
            ),
            
            Gaps.vGap16,
            
            RegisterTextFieldWidget(
              label: Translate.of(context).e_mail,
              hint: Translate.of(context).enter_your_e_mail,
              controller: controller.emailController,
              keyboardType: TextInputType.emailAddress,
            ),
            
            Gaps.vGap16,
            
            RegisterTextFieldWidget(
              label: Translate.of(context).verify_your_e_mail,
              hint: Translate.of(context).verify_your_e_mail,
              controller: controller.verifyEmailController,
              keyboardType: TextInputType.emailAddress,
            ),
            
            Gaps.vGap16,
            
            // ID and Driving License Row
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Translate.of(context).id,
                        style: AppTextStyle.s14_w400(color: Colors.black),
                      ),
                      Gaps.vGap8,
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.grey,
                            size: 32,
                          ),
                        ),
                      ),
                      Gaps.vGap4,
                      Text(
                        Translate.of(context).attach_id,
                        style: AppTextStyle.s12_w400(color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Gaps.hGap16,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Translate.of(context).driving_licensee,
                        style: AppTextStyle.s14_w400(color: Colors.black),
                      ),
                      Gaps.vGap8,
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.grey,
                            size: 32,
                          ),
                        ),
                      ),
                      Gaps.vGap4,
                      Text(
                        Translate.of(context).attach_driving_licensee,
                        style: AppTextStyle.s12_w400(color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
            Gaps.vGap24,
            
            // Work Type Selection
            Text(
              Translate.of(context).how_you_want_to_work,
              style: AppTextStyle.s16_w700(color: Colors.black),
            ),
            
            Gaps.vGap16,
            
            ObsValueConsumer(
              observable: controller.workType,
              builder: (context, workTypeValue) => Column(
                children: [
                  RegisterWorkTypeOptionWidget(
                    type: Translate.of(context).work_at_one_store_only,
                    selectedType: workTypeValue,
                    onTap: () => controller.selectWorkType(Translate.of(context).work_at_one_store_only),
                  ),
                  Gaps.vGap12,
                  RegisterWorkTypeOptionWidget(
                    type: Translate.of(context).work_at_many_stores,
                    selectedType: workTypeValue,
                    onTap: () => controller.selectWorkType(Translate.of(context).work_at_many_stores),
                  ),
                  Gaps.vGap12,
                  RegisterWorkTypeOptionWidget(
                    type: Translate.of(context).work_as_a_freelance,
                    selectedType: workTypeValue,
                    onTap: () => controller.selectWorkType(Translate.of(context).work_as_a_freelance),
                  ),
                ],
              ),
            ),
            
            Gaps.vGap24,
            
            // Password Fields
                          ObsValueConsumer(
                observable: controller.passwordVisible,
                builder: (context, isVisible) => RegisterTextFieldWidget(
                  label: Translate.of(context).password,
                  hint: Translate.of(context).enter_your_password,
                  controller: controller.passwordController,
                  isPassword: true,
                  isPasswordVisible: isVisible,
                  onTogglePassword: controller.togglePasswordVisibility,
                ),
              ),
            
            Gaps.vGap16,
            
                          ObsValueConsumer(
                observable: controller.confirmPasswordVisible,
                builder: (context, isVisible) => RegisterTextFieldWidget(
                  label: Translate.of(context).confirm_password,
                  hint: Translate.of(context).enter_your_password,
                  controller: controller.confirmPasswordController,
                  isPassword: true,
                  isPasswordVisible: isVisible,
                  onTogglePassword: controller.toggleConfirmPasswordVisibility,
                ),
              ),
            
            Gaps.vGap32,
            
            // Register Button
            ObsValueConsumer(
              observable: controller.isLoading,
              builder: (context, loading) => SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: loading ? null : () => controller.register(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: context.colors.primary,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: loading
                      ? const CircularProgressIndicator(color: Colors.white)
                                              : Text(
                            Translate.of(context).label_register,
                            style: AppTextStyle.s16_w700(color: Colors.white),
                          ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}