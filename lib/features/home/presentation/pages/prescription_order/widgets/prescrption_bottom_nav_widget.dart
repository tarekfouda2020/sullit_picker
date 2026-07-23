
import 'package:flutter/cupertino.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import '../../../../../../core/helpers/export.dart';

class PrescrptionBottomNavWidget extends StatelessWidget {
  final VoidCallback onScanProduct;
  final VoidCallback onConfirmOrder;

  const PrescrptionBottomNavWidget({
    super.key,
    required this.onScanProduct,
    required this.onConfirmOrder,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: false,
      right: false,
      top: false,
      child: KeyboardVisibilityBuilder(
        builder: (context, isOpen) {
          return Visibility(
            visible: !isOpen,
            child: Column(
              spacing: 12,
              children: [
                GestureDetector(
                  onTap: onScanProduct,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: context.colors.primary,
                      borderRadius: Dimens.borderRadius30PX,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(CupertinoIcons.camera, color: context.colors.white),
                        Gaps.hGap8,
                        Text(
                          Translate.s.scan_barcode,
                          style: AppTextStyle.s14_w600(color: context.colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                AppTextButton.maxPrimary(
                  text: Translate.s.complete_order,
                  onPressed: onConfirmOrder,
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
