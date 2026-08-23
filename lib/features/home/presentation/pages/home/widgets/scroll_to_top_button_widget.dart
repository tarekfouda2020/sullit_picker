import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/home_controller.dart';

import 'home_widgets_imports.dart';

class ScrollToTopButtonWidget extends StatelessWidget {
  final HomeController controller;

  const ScrollToTopButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer<bool>(
      observable: controller.showScrollTopObs,
      builder: (context, show) {
        if (!show) return const SizedBox.shrink();
        return GestureDetector(
          onTap: controller.scrollToTop,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: context.colors.primary,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: context.colors.primary.withValues(alpha: 0.3),
                  blurRadius: 8,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Icon(
              CupertinoIcons.arrow_up,
              color: context.colors.white,
              size: 18,
            ),
          ),
        );
      },
    );
  }
}
