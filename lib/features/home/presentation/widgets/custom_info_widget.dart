
import '../../../../core/helpers/export.dart';

class CustomInfoWidget extends StatelessWidget {
  final Widget? titleWidget;
  final Widget? endWidget;
  final double? iconSize;
  final EdgeInsetsGeometry? iconPadding;
  final String title;
  final String image;
  final CrossAxisAlignment? crossAxisAlignment;

  const CustomInfoWidget({
    super.key,
    this.titleWidget,
    this.iconPadding,
    required this.title,
    this.endWidget,
    this.iconSize,
    required this.image,
    this.crossAxisAlignment
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
          child: SvgPicture.asset(image,
              width: iconSize,
              height: iconSize,
              colorFilter: ColorFilter.mode(context.colors.primary, BlendMode.srcIn)),
        ),
        Gaps.hGap8,
        Expanded(
            child: titleWidget ??
                Text(
                  title,
                  style: AppTextStyle.s14_w500(color: context.colors.black),
                )),
        endWidget ?? Gaps.empty
      ],
    );
  }
}
