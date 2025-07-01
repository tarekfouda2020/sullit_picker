import 'package:flutter_tdd/features/auth/presentation/pages/login_register/login_register_imports.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/generated/l10n.dart';

@RoutePage()
class LoginRegisterPage extends StatefulWidget {
  const LoginRegisterPage({super.key});

  @override
  State<LoginRegisterPage> createState() => _LoginRegisterPageState();
}

class _LoginRegisterPageState extends State<LoginRegisterPage> {
  final controller = LoginRegisterController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              backgroundColor: context.colors.background,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height * 0.8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const SizedBox(height: 20),
              
              // Back Arrow
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: context.colors.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: context.colors.primary,
                  size: 20,
                ),
              ),
              
              const SizedBox(height: 40),
              
              // App Name
              Center(
                child: Column(
                  children: [
                    Text(
                      S.of(context).weideliver,
                      style: AppTextStyle.s32_w700(color: context.colors.primary),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      S.of(context).hello_welcome,
                      style: AppTextStyle.s16_w400(color: context.colors.textSubtle),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 50),
              
              // Title
              Center(
                child: ObsValueConsumer(
                  observable: controller.currentTab,
                  builder: (context, currentTab) {
                    return Column(
                      children: [
                        Text(
                          currentTab == 0 ? S.of(context).login : S.of(context).register,
                          style: AppTextStyle.s24_w700(color: context.colors.textDark),
                        ),
                        if (currentTab == 1) ...[
                          const SizedBox(height: 8),
                          Text(
                            S.of(context).register_subtitle,
                            style: AppTextStyle.s14_w400(color: context.colors.textSubtle),
                          ),
                        ],
                      ],
                    );
                  },
                ),
              ),
              
              const SizedBox(height: 30),
              
              // Tab Bar
              Container(
                height: 44,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: ObsValueConsumer(
                  observable: controller.currentTab,
                  builder: (context, currentTab) {
                    return Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () => controller.switchTab(0),
                            child: Container(
                              height: 44,
                              decoration: BoxDecoration(
                                color: currentTab == 0 ? context.colors.primary : Colors.transparent,
                                borderRadius: BorderRadius.circular(22),
                              ),
                              child: Center(
                                child: Text(
                                  S.of(context).login,
                                  style: AppTextStyle.s14_w600(
                                    color: currentTab == 0 ? Colors.white : context.colors.textSubtle,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () => controller.switchTab(1),
                            child: Container(
                              height: 44,
                              decoration: BoxDecoration(
                                color: currentTab == 1 ? context.colors.primary : Colors.transparent,
                                borderRadius: BorderRadius.circular(22),
                              ),
                              child: Center(
                                child: Text(
                                  S.of(context).register,
                                  style: AppTextStyle.s14_w600(
                                    color: currentTab == 1 ? Colors.white : context.colors.textSubtle,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              
              const SizedBox(height: 40),
              
              // Content based on selected tab
              ObsValueConsumer(
                observable: controller.currentTab,
                builder: (context, currentTab) {
                  return currentTab == 0 ? _buildLoginForm() : _buildRegisterForm();
                },
              ),
              
              const SizedBox(height: 50), // Bottom padding
            ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginForm() {
    return Form(
      key: controller.loginFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Email Field
          Text(
            S.of(context).e_mail,
            style: AppTextStyle.s14_w600(color: context.colors.textLabel),
          ),
          const SizedBox(height: 8),
          GenericTextField(
            controller: controller.loginEmailController,
            validate: (value) => controller.validateEmail(value),
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            hint: S.of(context).enter_your_e_mail,
            fillColor: Colors.white,
            enableBorderColor: context.colors.inputBorder,
            focusBorderColor: context.colors.primary,
            hintColor: context.colors.hintText,
            radius: BorderRadius.circular(30),
            contentPadding: const EdgeInsets.all(16),
          ),
          
          const SizedBox(height: 24),
          
          // Password Field
          Text(
            S.of(context).password,
            style: AppTextStyle.s14_w600(color: context.colors.textLabel),
          ),
          const SizedBox(height: 8),
          GenericTextField(
            controller: controller.loginPasswordController,
            validate: (value) => controller.validatePassword(value),
            fieldTypes: FieldTypes.password,
            type: TextInputType.text,
            action: TextInputAction.done,
            hint: S.of(context).enter_your_password,
            fillColor: Colors.white,
            enableBorderColor: context.colors.inputBorder,
            focusBorderColor: context.colors.primary,
            hintColor: context.colors.hintText,
            radius: BorderRadius.circular(30),
            contentPadding: const EdgeInsets.all(16),
            suffixIcon: Icon(
              Icons.visibility_off_outlined,
              color: context.colors.hintText,
              size: 20,
            ),
          ),
          
          const SizedBox(height: 40),
          
          // Login Button
          ObsValueConsumer(
            observable: controller.isLoginLoading,
            builder: (context, isLoading) {
              return SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: isLoading ? null : () => controller.login(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: context.colors.primary,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26),
                    ),
                  ),
                  child: isLoading
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                          ),
                        )
                      : Text(
                          S.of(context).login,
                          style: AppTextStyle.s16_w600(color: Colors.white),
                        ),
                ),
              );
            },
          ),
          
          const SizedBox(height: 24),
          
          // Forgot Password
          Center(
            child: GestureDetector(
              onTap: () => controller.navigateToForgetPassword(context),
              child: RichText(
                text: TextSpan(
                  text: '${S.of(context).forgot_password} ',
                  style: AppTextStyle.s14_w400(color: context.colors.textSubtle),
                  children: [
                    TextSpan(
                      text: S.of(context).restore,
                      style: AppTextStyle.s14_w600(color: context.colors.primary),
                    ),
                  ],
                ),
              ),
            ),
          ),
          
          const SizedBox(height: 40),
        ],
      ),
    );
  }

    Widget _buildRegisterForm() {
    return Form(
      key: controller.registerFormKey,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Name Field
            Text(
              S.of(context).user_name,
              style: AppTextStyle.s14_w600(color: context.colors.textLabel),
            ),
            const SizedBox(height: 8),
            GenericTextField(
              controller: controller.registerNameController,
              validate: (value) => controller.validateName(value),
              fieldTypes: FieldTypes.normal,
              type: TextInputType.text,
              action: TextInputAction.next,
              hint: S.of(context).enter_user_name,
              fillColor: Colors.white,
              enableBorderColor: context.colors.inputBorder,
              focusBorderColor: context.colors.primary,
              hintColor: context.colors.hintText,
              radius: BorderRadius.circular(30),
              contentPadding: const EdgeInsets.all(16),
            ),
            
            const SizedBox(height: 20),
            
            // Email Field with Verify Link
            Text(
              S.of(context).e_mail,
              style: AppTextStyle.s14_w600(color: context.colors.textLabel),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: GenericTextField(
                    controller: controller.registerEmailController,
                    validate: (value) => controller.validateEmail(value),
                    fieldTypes: FieldTypes.normal,
                    type: TextInputType.emailAddress,
                    action: TextInputAction.next,
                    hint: S.of(context).enter_your_e_mail,
                    fillColor: Colors.white,
                    enableBorderColor: context.colors.inputBorder,
                    focusBorderColor: context.colors.primary,
                    hintColor: context.colors.hintText,
                    radius: BorderRadius.circular(30),
                    contentPadding: const EdgeInsets.all(16),
                  ),
                ),
                const SizedBox(width: 16),
                GestureDetector(
                  onTap: () {
                    // TODO: Implement email verification
                  },
                  child: Text(
                    S.of(context).verify_your_e_mail,
                    style: AppTextStyle.s14_w600(color: context.colors.primary),
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 24),
            
            // Document Upload Section
            Row(
              children: [
                // ID Upload
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.of(context).id,
                        style: AppTextStyle.s14_w600(color: context.colors.textLabel),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: context.colors.inputBorder),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                size: 32,
                                color: context.colors.hintText,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                S.of(context).attach_id,
                                style: AppTextStyle.s12_w400(color: context.colors.hintText),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(width: 16),
                
                // Driving License Upload
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.of(context).driving_licensee,
                        style: AppTextStyle.s14_w600(color: context.colors.textLabel),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: context.colors.inputBorder),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                size: 32,
                                color: context.colors.hintText,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                S.of(context).attach_driving_licensee,
                                style: AppTextStyle.s12_w400(color: context.colors.hintText),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 24),
            
            // Work Preference Section
            Text(
              S.of(context).how_you_want_to_work,
              style: AppTextStyle.s14_w600(color: context.colors.textLabel),
            ),
            const SizedBox(height: 12),
            
            ObsValueConsumer(
              observable: controller.selectedWorkType,
              builder: (context, selectedWorkType) {
                return Column(
                  children: [
                    // Work at one store only
                    Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        color: selectedWorkType == 0 ? context.colors.primary.withOpacity(0.1) : Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: selectedWorkType == 0 ? context.colors.primary : context.colors.inputBorder,
                          width: selectedWorkType == 0 ? 2 : 1,
                        ),
                      ),
                      child: RadioListTile<int>(
                        value: 0,
                        groupValue: selectedWorkType,
                        onChanged: (value) => controller.setWorkType(value!),
                        activeColor: context.colors.primary,
                        title: Text(
                          S.of(context).work_at_one_store_only,
                          style: AppTextStyle.s14_w400(
                            color: selectedWorkType == 0 ? context.colors.primary : context.colors.textLabel,
                          ),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                      ),
                    ),
                    
                    // Work at many stores
                    Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        color: selectedWorkType == 1 ? context.colors.primary.withOpacity(0.1) : Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: selectedWorkType == 1 ? context.colors.primary : context.colors.inputBorder,
                          width: selectedWorkType == 1 ? 2 : 1,
                        ),
                      ),
                      child: RadioListTile<int>(
                        value: 1,
                        groupValue: selectedWorkType,
                        onChanged: (value) => controller.setWorkType(value!),
                        activeColor: context.colors.primary,
                        title: Text(
                          S.of(context).work_at_many_stores,
                          style: AppTextStyle.s14_w400(
                            color: selectedWorkType == 1 ? context.colors.primary : context.colors.textLabel,
                          ),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                      ),
                    ),
                    
                    // Work as freelance
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        color: selectedWorkType == 2 ? context.colors.primary.withOpacity(0.1) : Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: selectedWorkType == 2 ? context.colors.primary : context.colors.inputBorder,
                          width: selectedWorkType == 2 ? 2 : 1,
                        ),
                      ),
                      child: RadioListTile<int>(
                        value: 2,
                        groupValue: selectedWorkType,
                        onChanged: (value) => controller.setWorkType(value!),
                        activeColor: context.colors.primary,
                        title: Text(
                          S.of(context).work_as_a_freelance,
                          style: AppTextStyle.s14_w400(
                            color: selectedWorkType == 2 ? context.colors.primary : context.colors.textLabel,
                          ),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                      ),
                    ),
                  ],
                );
              },
            ),
            
            // Password Field
            Text(
              S.of(context).password,
              style: AppTextStyle.s14_w600(color: context.colors.textLabel),
            ),
            const SizedBox(height: 8),
            GenericTextField(
              controller: controller.registerPasswordController,
              validate: (value) => controller.validatePassword(value),
              fieldTypes: FieldTypes.password,
              type: TextInputType.text,
              action: TextInputAction.next,
              hint: S.of(context).enter_your_password,
              fillColor: Colors.white,
              enableBorderColor: context.colors.inputBorder,
              focusBorderColor: context.colors.primary,
              hintColor: context.colors.hintText,
              radius: BorderRadius.circular(30),
              contentPadding: const EdgeInsets.all(16),
              suffixIcon: Icon(
                Icons.visibility_off_outlined,
                color: context.colors.hintText,
                size: 20,
              ),
            ),
            
            const SizedBox(height: 20),
            
            // Confirm Password Field
            Text(
              S.of(context).confirm_password,
              style: AppTextStyle.s14_w600(color: context.colors.textLabel),
            ),
            const SizedBox(height: 8),
            GenericTextField(
              controller: controller.registerConfirmPasswordController,
              validate: (value) => controller.validateConfirmPassword(value),
              fieldTypes: FieldTypes.password,
              type: TextInputType.text,
              action: TextInputAction.done,
              hint: S.of(context).enter_your_password,
              fillColor: Colors.white,
              enableBorderColor: context.colors.inputBorder,
              focusBorderColor: context.colors.primary,
              hintColor: context.colors.hintText,
              radius: BorderRadius.circular(30),
              contentPadding: const EdgeInsets.all(16),
              suffixIcon: Icon(
                Icons.visibility_off_outlined,
                color: context.colors.hintText,
                size: 20,
              ),
            ),
            
            const SizedBox(height: 40),
            
            // Register Button
            ObsValueConsumer(
              observable: controller.isRegisterLoading,
              builder: (context, isLoading) {
                return SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: isLoading ? null : () => controller.register(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: context.colors.primary,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26),
                      ),
                    ),
                    child: isLoading
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                            ),
                          )
                        : Text(
                            S.of(context).register,
                            style: AppTextStyle.s16_w600(color: Colors.white),
                          ),
                  ),
                );
              },
            ),
            
            const SizedBox(height: 40), // Bottom padding
          ],
        ),
    );
  }
} 