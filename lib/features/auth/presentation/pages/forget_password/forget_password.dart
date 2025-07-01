import 'forget_password_imports.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/localization/translate.dart';

@RoutePage()
class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  final controller = ForgetPasswordController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: controller.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Back button
                Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 32),
                  child: GestureDetector(
                    onTap: () => controller.backToLogin(context),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: context.colors.black,
                        size: 24,
                      ),
                    ),
                  ),
                ),

                // Illustration
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Container(
                      height: 250,
                      width: double.infinity,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          // Background circles
                          Positioned(
                            top: 20,
                            right: 40,
                            child: Container(
                              width: 80,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.pink.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 40,
                            left: 20,
                            child: Container(
                              width: 60,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.pink.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                          
                          // Main mailbox illustration
                          Center(
                            child: Container(
                              width: 200,
                              height: 150,
                              decoration: BoxDecoration(
                                color: context.colors.primary,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Stack(
                                children: [
                                  // Mailbox
                                  Positioned(
                                    bottom: 40,
                                    left: 50,
                                    right: 50,
                                    child: Container(
                                      height: 80,
                                      decoration: BoxDecoration(
                                        color: context.colors.primary,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.mail_outline,
                                          color: Colors.white,
                                          size: 40,
                                        ),
                                      ),
                                    ),
                                  ),
                                  // Flag
                                  Positioned(
                                    top: 30,
                                    right: 40,
                                    child: Container(
                                      width: 20,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                  ),
                                  // Paper planes
                                  Positioned(
                                    top: 10,
                                    left: 20,
                                    child: Transform.rotate(
                                      angle: -0.3,
                                      child: Icon(
                                        Icons.send,
                                        color: context.colors.primary,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 20,
                                    right: 60,
                                    child: Transform.rotate(
                                      angle: 0.5,
                                      child: Icon(
                                        Icons.send,
                                        color: context.colors.primary,
                                        size: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          
                          // Dotted lines
                          Positioned(
                            top: 80,
                            left: 30,
                            child: CustomPaint(
                              size: Size(60, 2),
                              painter: DottedLinePainter(),
                            ),
                          ),
                          Positioned(
                            top: 100,
                            right: 50,
                            child: CustomPaint(
                              size: Size(40, 2),
                              painter: DottedLinePainter(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // Content
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Title
                      Text(
                        Translate.of(context).forgot_password_question,
                        style: AppTextStyle.s24_w700(color: context.colors.black),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      
                      // Subtitle
                      Text(
                        "Enter your e-mail to recover the password",
                        style: AppTextStyle.s16_w400(color: Colors.grey[600]!),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 40),
                      
                      // Email field
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "E-mail",
                          style: AppTextStyle.s16_w500(color: context.colors.black),
                        ),
                      ),
                      const SizedBox(height: 8),
                      GenericTextField(
                        controller: controller.emailController,
                        fieldTypes: FieldTypes.normal,
                        type: TextInputType.emailAddress,
                        action: TextInputAction.done,
                        fillColor: context.colors.white,
                        label: Translate.of(context).e_mail,
                        margin: const EdgeInsets.only(right: 16, left: 16, top: 24),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                        validate: (value) => null,
                        hint: Translate.of(context).enter_your_e_mail,
                      ),
                      const SizedBox(height: 32),
                      
                      // Send button
                      ObsValueConsumer(
                        observable: controller.isLoading,
                        builder: (context, isLoading) {
                          return SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: isLoading ? null : () => controller.sendResetEmail(context),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: context.colors.primary,
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(vertical: 16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                elevation: 0,
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
                                      "Send",
                                      style: AppTextStyle.s16_w600(color: Colors.white),
                                    ),
                            ),
                          );
                        },
                      ),
                      const Spacer(),
                      
                      // Back to login button
                      TextButton(
                        onPressed: () => controller.backToLogin(context),
                        child: Text(
                          Translate.of(context).back_to_login,
                          style: AppTextStyle.s16_w600(color: context.colors.primary),
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Custom painter for dotted lines
class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.grey[400]!
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    double dashWidth = 4;
    double dashSpace = 4;
    double startX = 0;

    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0),
        Offset(startX + dashWidth, 0),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
