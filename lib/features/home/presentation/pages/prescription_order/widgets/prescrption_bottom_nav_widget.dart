import 'package:flutter/cupertino.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import '../../../../../../core/helpers/export.dart';

class PrescrptionBottomNavWidget extends StatelessWidget {
  final VoidCallback? onScanProduct;
  final VoidCallback? onConfirmOrder;
  final VoidCallback? onDispatch;
  final bool isAwaitingCustomer;

  const PrescrptionBottomNavWidget({
    super.key,
    this.onScanProduct,
    this.onConfirmOrder,
    this.onDispatch,
    this.isAwaitingCustomer = false,
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
            child: _buildContent(context),
          );
        },
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    if (isAwaitingCustomer) return _buildAwaitingBanner(context);
    if (onDispatch != null) {
      return AppTextButton.maxCustom(
        text: Translate.s.dispatch_order,
        onPressed: onDispatch!,
        bgColor: context.colors.appGreen,
        txtColor: context.colors.white,
        textSize: 18,
        maxHeight: 50,
      );
    }
    return Column(
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
          onPressed: onConfirmOrder ?? () {},
        ),
      ],
    );
  }

  Widget _buildAwaitingBanner(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: context.colors.primary.withValues(alpha: 0.08),
        borderRadius: Dimens.borderRadius12PX,
        border: Border.all(
          color: context.colors.primary.withValues(alpha: 0.3),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(CupertinoIcons.clock, size: 18, color: context.colors.primary),
          Gaps.hGap8,
          Expanded(
            child: Text(
              Translate.s.awaiting_customer_confirmation,
              textAlign: TextAlign.center,
              style: AppTextStyle.s14_w500(color: context.colors.primary),
            ),
          ),
        ],
      ),
    );
  }
}
