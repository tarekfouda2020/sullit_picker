import 'package:flutter_tdd/features/auth/presentation/widgets/app_slogan_widget.dart';

import '../../../../../../core/helpers/export.dart';

class AuthPageLogoWidget extends StatelessWidget {
  const AuthPageLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        children: [
          const AppSloganWidget(),
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
