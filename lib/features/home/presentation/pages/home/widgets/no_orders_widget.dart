
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

import 'home_widgets_imports.dart';

class NoOrdersWidget extends StatelessWidget {
  final HomeController controller;
  const NoOrdersWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          HomeHeaderWidget(controller: controller),
          Gaps.vGap14,
          CustomSearchBar(controller: controller),
          Gaps.vGap16,
          /// want image and text to be in center
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(Res.noOrdersAvailable,
                  width: 123, height: 152,
                  ),
                  Text(
                      "You Have No Orders Now",
                      style: AppTextStyle.s16_w400(color: context.colors.primary)
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
