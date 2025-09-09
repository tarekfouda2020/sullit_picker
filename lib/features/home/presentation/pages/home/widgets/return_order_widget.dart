import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

import 'home_widgets_imports.dart';

class ReturnOrderWidget extends StatelessWidget {
  final HomeController controller;
  const ReturnOrderWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> controller.openMap(),
        child: SvgPicture.asset(Res.returnOrderIcon)
    );
  }
}
