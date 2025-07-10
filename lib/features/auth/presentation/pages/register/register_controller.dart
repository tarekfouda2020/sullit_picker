part of 'register_imports.dart';

class RegisterController {
  // Form controllers
  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final verifyEmailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  
  // Observable values for form state
  final isLoading = ObsValue<bool>.withInit(false);
  final workType = ObsValue<String>.withInit('work at one store only');
  final passwordVisible = ObsValue<bool>.withInit(false);
  final confirmPasswordVisible = ObsValue<bool>.withInit(false);
  
  // Dispose controllers
  void dispose() {
    userNameController.dispose();
    emailController.dispose();
    verifyEmailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }
  
  // Handle work type selection
  void selectWorkType(String type) {
    workType.setValue(type);
  }
  
  // Toggle password visibility
  void togglePasswordVisibility() {
    passwordVisible.setValue(!passwordVisible.getValue());
  }
  
  void toggleConfirmPasswordVisibility() {
    confirmPasswordVisible.setValue(!confirmPasswordVisible.getValue());
  }
  
  // Handle registration
  void register(BuildContext context) async {
    if (_validateForm()) {
      isLoading.setValue(true);
      
      // Simulate API call
      await Future.delayed(const Duration(seconds: 2));
      
      isLoading.setValue(false);
      
      // Navigate to subscription page
      AutoRouter.of(context).push(const SubscriptionPageRoute());
    }
  }
  
  // Form validation
  bool _validateForm() {
    if (userNameController.text.isEmpty ||
        emailController.text.isEmpty ||
        verifyEmailController.text.isEmpty ||
        passwordController.text.isEmpty ||
        confirmPasswordController.text.isEmpty) {
      return false;
    }
    
    if (emailController.text != verifyEmailController.text) {
      return false;
    }
    
    if (passwordController.text != confirmPasswordController.text) {
      return false;
    }
    
    return true;
  }
} 