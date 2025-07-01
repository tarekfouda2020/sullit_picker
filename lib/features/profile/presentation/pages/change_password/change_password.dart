import 'change_password_imports.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'widgets/password_form_widget.dart';
import 'widgets/change_password_button_widget.dart';

@RoutePage()
class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final controller = ChangePasswordController();

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
        backgroundColor: context.colors.primary,
        elevation: 0,
        leading: IconButton(
          onPressed: () => AutoRouter.of(context).pop(),
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
          'تغيير كلمة المرور',
          style: AppTextStyle.s18_w700(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            PasswordFormWidget(controller: controller),
            const SizedBox(height: 32),
            ChangePasswordButtonWidget(controller: controller),
          ],
        ),
      ),
    );
  }
} 