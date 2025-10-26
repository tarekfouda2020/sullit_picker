
import '../../../../../../core/helpers/export.dart';

class QntCountWidget extends StatelessWidget {
  final int qnt;
  const QntCountWidget({super.key, required this.qnt});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration: BoxDecoration(
        color: context.colors.lightPrimary.withOpacity(0.3),
        borderRadius: Dimens.borderRadius30PX,
      ),
      child: Text(
        "$qnt",
        style: AppTextStyle.s18_w600(
            color: context.colors.primary),
      ),
    );
  }
}
