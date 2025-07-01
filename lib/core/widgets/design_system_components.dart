import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';

/// Design System Components for consistent Figma implementation
class DSComponents {
  
  /// Creates a card with consistent styling matching Figma designs
  static Widget card({
    required Widget child,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    double? borderRadius,
    Color? backgroundColor,
    bool hasShadow = true,
    double? elevation,
  }) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white,
        borderRadius: BorderRadius.circular(borderRadius ?? Dimens.cardBorderRadius16),
        boxShadow: hasShadow ? [
          BoxShadow(
            color: Colors.black.withValues(alpha: Dimens.shadowOpacity),
            blurRadius: Dimens.shadowBlurRadius,
            offset: Dimens.shadowOffset,
            spreadRadius: Dimens.shadowSpreadRadius,
          ),
        ] : null,
      ),
      child: Padding(
        padding: padding ?? Dimens.paddingCardAll,
        child: child,
      ),
    );
  }

  /// Creates an icon with circular background matching Figma patterns
  static Widget iconWithBackground({
    required IconData icon,
    required BuildContext context,
    double? containerSize,
    double? iconSize,
    Color? backgroundColor,
    Color? iconColor,
  }) {
    return Container(
      width: containerSize ?? Dimens.iconContainerSmall,
      height: containerSize ?? Dimens.iconContainerSmall,
      decoration: BoxDecoration(
        color: backgroundColor ?? context.colors.primary,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: iconColor ?? Colors.white,
        size: iconSize ?? Dimens.iconSizeSmall,
      ),
    );
  }

  /// Creates a primary button with consistent styling
  static Widget primaryButton({
    required String text,
    required VoidCallback onPressed,
    required BuildContext context,
    double? height,
    double? borderRadius,
    EdgeInsetsGeometry? padding,
    bool isFullWidth = true,
    bool isLoading = false,
  }) {
    return SizedBox(
      height: height ?? Dimens.buttonHeight,
      width: isFullWidth ? double.infinity : null,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: context.colors.primary,
          foregroundColor: Colors.white,
          padding: padding ?? const EdgeInsets.symmetric(
            horizontal: Dimens.buttonPaddingHorizontal,
            vertical: Dimens.buttonPaddingVertical,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? Dimens.buttonBorderRadius),
          ),
          elevation: 0,
        ),
        child: isLoading
          ? const SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            )
          : Text(
              text,
              style: AppTextStyle.s16_w700(color: Colors.white),
            ),
      ),
    );
  }

  /// Creates an outlined button with consistent styling
  static Widget outlinedButton({
    required String text,
    required VoidCallback onPressed,
    required BuildContext context,
    double? height,
    double? borderRadius,
    EdgeInsetsGeometry? padding,
    bool isFullWidth = true,
    double borderWidth = 1.5,
  }) {
    return SizedBox(
      height: height ?? Dimens.buttonHeight,
      width: isFullWidth ? double.infinity : null,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: context.colors.primary,
            width: borderWidth,
          ),
          padding: padding ?? const EdgeInsets.symmetric(
            horizontal: Dimens.buttonPaddingHorizontal,
            vertical: Dimens.buttonPaddingVertical,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? Dimens.buttonBorderRadius),
          ),
        ),
        child: Text(
          text,
          style: AppTextStyle.s16_w600(color: context.colors.primary),
        ),
      ),
    );
  }

  /// Creates a section header with consistent styling
  static Widget sectionHeader({
    required String title,
    required BuildContext context,
    String? subtitle,
    Widget? trailing,
    EdgeInsetsGeometry? padding,
  }) {
    return Padding(
      padding: padding ?? const EdgeInsets.only(bottom: Dimens.dp12),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyle.s16_w600(color: context.colors.textPrimary),
                ),
                if (subtitle != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: AppTextStyle.s14_w400(color: context.colors.textSecondary),
                  ),
                ],
              ],
            ),
          ),
          if (trailing != null) trailing,
        ],
      ),
    );
  }

  /// Creates an info row with icon and text
  static Widget infoRow({
    required IconData icon,
    required String text,
    required BuildContext context,
    Widget? trailing,
    double? iconContainerSize,
    double? iconSize,
    Color? iconBackgroundColor,
    TextStyle? textStyle,
  }) {
    return Row(
      children: [
        iconWithBackground(
          icon: icon,
          context: context,
          containerSize: iconContainerSize,
          iconSize: iconSize,
          backgroundColor: iconBackgroundColor,
        ),
        const SizedBox(width: Dimens.dp12),
        Expanded(
          child: Text(
            text,
            style: textStyle ?? AppTextStyle.s16_w400(color: context.colors.textPrimary),
          ),
        ),
        if (trailing != null) ...[
          const SizedBox(width: Dimens.dp8),
          trailing,
        ],
      ],
    );
  }

  /// Creates a status badge with consistent styling
  static Widget statusBadge({
    required String text,
    required BuildContext context,
    Color? backgroundColor,
    Color? textColor,
    EdgeInsetsGeometry? padding,
    double? borderRadius,
  }) {
    return Container(
      padding: padding ?? Dimens.paddingH20V12PX,
      decoration: BoxDecoration(
        color: backgroundColor ?? context.colors.primary,
        borderRadius: BorderRadius.circular(borderRadius ?? Dimens.buttonBorderRadius),
      ),
      child: Text(
        text,
        style: AppTextStyle.s16_w700(color: textColor ?? Colors.white),
      ),
    );
  }

  /// Creates a navigation action button (like phone call, navigation)
  static Widget actionButton({
    required IconData icon,
    required VoidCallback onPressed,
    required BuildContext context,
    Color? backgroundColor,
    Color? iconColor,
    double? size,
    double? iconSize,
    double? borderRadius,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: size ?? Dimens.iconContainerLarge,
        height: size ?? Dimens.iconContainerLarge,
        decoration: BoxDecoration(
          color: backgroundColor ?? context.colors.primary,
          borderRadius: BorderRadius.circular(borderRadius ?? Dimens.buttonBorderRadius),
        ),
        child: Icon(
          icon,
          color: iconColor ?? Colors.white,
          size: iconSize ?? Dimens.iconSizeLarge,
        ),
      ),
    );
  }

  /// Creates a detail item for address or other information
  static Widget detailItem({
    required String label,
    required String value,
    required BuildContext context,
    EdgeInsetsGeometry? padding,
  }) {
    return Padding(
      padding: padding ?? const EdgeInsets.only(bottom: 4),
      child: RichText(
        text: TextSpan(
          text: '$label : ',
          style: AppTextStyle.s14_w400(color: context.colors.textSecondary),
          children: [
            TextSpan(
              text: value,
              style: AppTextStyle.s14_w400(color: context.colors.textSecondary),
            ),
          ],
        ),
      ),
    );
  }

  /// Creates a loading overlay
  static Widget loadingOverlay({
    required bool isLoading,
    required Widget child,
  }) {
    return Stack(
      children: [
        child,
        if (isLoading)
          Container(
            color: Colors.black.withValues(alpha: 0.3),
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
      ],
    );
  }
} 