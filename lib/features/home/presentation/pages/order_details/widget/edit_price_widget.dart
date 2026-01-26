import '../../../../../../core/helpers/export.dart';

class EditPriceWidget extends StatelessWidget {
  final void Function() onTap;

  const EditPriceWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: Dimens.dp25,
        height: Dimens.dp25,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: context.colors.softRose,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          Res.pencilIcon,
          colorFilter: ColorFilter.mode(
            context.colors.darkRose,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
