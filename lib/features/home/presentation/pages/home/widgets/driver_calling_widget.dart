import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

import 'home_widgets_imports.dart';

class DriverCallingWidget extends StatelessWidget {
  final HomeController controller;
  const DriverCallingWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 40, height: 40,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: context.colors.primary,
          shape: BoxShape.circle
        ),
        child: SvgPicture.asset(Res.phoneIcon),
      ),
    );
  }
}
