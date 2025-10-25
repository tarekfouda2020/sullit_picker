
import '../../../../core/helpers/export.dart';
import '../../../../core/widgets/shimmers/base_shimmer_widget.dart';

class ButtonShimmerWidget extends StatelessWidget {
  const ButtonShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseShimmerWidget(
      child: Container(
        width: double.infinity,
        height: 44,
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: Dimens.borderRadius30PX,
        ),
      ),
    );
  }
}
