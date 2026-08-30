import 'package:flutter_tdd/features/auth/presentation/pages/change_password/change_password_imports.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/login_view/login_view_controller.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/login_view/widgets/auth_logo_widget.dart';

import 'widgets/login_form_widget.dart';

@RoutePage(name: "LoginViewRoute")
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  final LoginViewController controller = LoginViewController();

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) => SystemNavigator.pop(),
      child: GestureDetector(
        onTap: ()=> FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: context.colors.background,
          resizeToAvoidBottomInset: true,
          appBar: const DefaultAppBar(
            title: "",
            showBack: false,
            size: 30,
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.sizeOf(context).height * 0.8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gaps.vGap30,
                  const AuthPageLogoWidget(),
                  Gaps.vGap50,
                  LoginFormWidget(controller: controller),
                  Gaps.vGap50, // Bottom padding
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
