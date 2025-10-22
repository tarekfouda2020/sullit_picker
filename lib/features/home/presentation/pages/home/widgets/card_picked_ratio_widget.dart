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
    return  Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        child,
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              height: 5,
              decoration: const BoxDecoration(
                color: Color(0xFFB0B0B0),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
            ),
            // Filled progress bar
            Row(
              children: [
                Container(
                  width: (MediaQuery.sizeOf(context).width - 100 ) * (pickedPercentage / 100) ,
                  height: 5,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                  ),
                ),
              ],
            ),
            // Circular indicator
            PositionedDirectional(
              start: (MediaQuery.of(context).size.width - 100) * (pickedPercentage / 100) ,
              child: Container(
                width: 13,
                height: 13,
                decoration: const BoxDecoration(
                  color: Color(0xFF4CAF50),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),

      ],
    );
  }
}
