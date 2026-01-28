import 'home_widgets_imports.dart';

class CardPickedRatioWidget extends StatelessWidget {
  final double pickedPercentage;
  final Widget child;

  const CardPickedRatioWidget({
    super.key,
    required this.pickedPercentage,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final progressWidth = width * (pickedPercentage / 100);

        return Stack(
          alignment: Alignment.bottomCenter,
          clipBehavior: Clip.none,
          children: [
            child,

            // Background bar
            Container(
              height: 5,
              width: width,
              decoration: BoxDecoration(
                color: context.colors.gray4,
                borderRadius: const BorderRadiusDirectional.only(
                  bottomEnd: Radius.circular(30),
                  bottomStart: Radius.circular(30),
                ),
              ),
            ),

            // Filled bar
            PositionedDirectional(
              start: 0,
              bottom: 0,
              child: Container(
                width: progressWidth,
                height: 5,
                decoration: BoxDecoration(
                  color: context.colors.indicatorColor,
                  borderRadius: BorderRadiusDirectional.only(
                    bottomStart: const Radius.circular(30),
                    bottomEnd: Radius.circular(
                      pickedPercentage == 100 ? 30 : 0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

