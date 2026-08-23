import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/helpers/export.dart';

class ScannedProductStepperButtonWidget extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const ScannedProductStepperButtonWidget({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: Dimens.paddingAll6Px,
        decoration: BoxDecoration(
          color: context.colors.background,
          borderRadius: Dimens.borderRadius8PX,
        ),
        child: Icon(icon, size: 16, color: context.colors.primary),
      ),
    );
  }
}
