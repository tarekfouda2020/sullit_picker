import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/login_register/login_register_imports.dart';


class AuthSectionTitleWidget extends StatelessWidget {
  final String title;
  final double? paddingFromBottom;
  const AuthSectionTitleWidget({super.key, required this.title, this.paddingFromBottom});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom:paddingFromBottom ?? 5),
      child: Text(
        title,
        style: AppTextStyle.s14_w600(color: context.colors.textLabel),
      ),
    );
  }
}
