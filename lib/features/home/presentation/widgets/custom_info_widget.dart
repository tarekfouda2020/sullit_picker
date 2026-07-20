
import '../../../../core/helpers/export.dart';

class CustomInfoWidget extends StatelessWidget {
  final Widget? titleWidget;
  final Widget? endWidget;
  final double? iconSize;
  final EdgeInsetsGeometry? iconPadding;
  final String title;
  final String image;
  final CrossAxisAlignment? crossAxisAlignment;
 final bool isSvg;
 final IconData? icon;
  const CustomInfoWidget({
    super.key,
    this.titleWidget,
    this.iconPadding,
    required this.title,
    this.endWidget,
    this.iconSize,
    required this.image,
    this.crossAxisAlignment,
    this.isSvg = true,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
      children: [
        Container(
          padding: iconPadding ?? Dimens.paddingAll3Px,
          width: 26,
          height: 26,
          decoration: BoxDecoration(
              color: context.colors.gray5, shape: BoxShape.circle),
          child: Visibility(
            visible: isSvg ,
              replacement: Icon(icon,
              size: iconSize,
              color: context.colors.primary,
              ),
              child: SvgPicture.asset(image,
                  width: iconSize,
                  height: iconSize,
                  colorFilter: ColorFilter.mode(context.colors.primary, BlendMode.srcIn))
          ),
        ),
        Gaps.hGap8,
        Expanded(
            child: titleWidget ??
                Text(
                  title,
                  style: AppTextStyle.s14_w500(color: context.colors.black).copyWith(
                    height: 1.2
                  ),
                )),
        Gaps.hGap5,
        endWidget ?? Gaps.empty
      ],
    );
  }
}
