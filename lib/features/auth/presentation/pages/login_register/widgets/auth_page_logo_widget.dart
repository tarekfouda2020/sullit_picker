import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/login_register/login_register_imports.dart';

class AuthPageLogoWidget extends StatelessWidget {
  const AuthPageLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        children: [
          Text(
            Translate.s.weideliver,
            style: AppTextStyle.s32_w700(color: context.colors.primary),
          ),
          Gaps.vGap32,
          Text(
            Translate.s.hello_welcome,
            style: AppTextStyle.s16_w400(color: context.colors.textSubtle),
          ),
        ],
      ),
    );
  }
}
