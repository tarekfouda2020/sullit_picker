import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc_builder.dart';
import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/core/widgets/shimmers/base_shimmer_widget.dart';
import 'package:flutter_tdd/features/home/data/model/prescription_order_details/pharmacy_order_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/prescription_order/prescription_order_imports.dart';
import 'package:flutter_tdd/features/home/presentation/pages/prescription_order/widgets/prescription_search_hint_widget.dart';

class PrescriptionSearchHintLoaderWidget extends StatelessWidget {
  final PrescriptionOrderController controller;

  const PrescriptionSearchHintLoaderWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return BaseBlocBuilder<PharmacyOrderModel>(
      bloc: controller.orderCubit,
      onLoadingWidget: (_) => const _SearchHintShimmerWidget(),
      onSuccessWidget: (_) => controller.isEditing
          ? Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                PrescriptionSearchHintWidget(
                  onTap: () => controller.showProductSearchSheet(context),
                ),
                Gaps.vGap10,
              ],
            )
          : const SizedBox.shrink(),
    );
  }
}

class _SearchHintShimmerWidget extends StatelessWidget {
  const _SearchHintShimmerWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BaseShimmerWidget(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
            decoration: BoxDecoration(
              color: context.colors.white,
              borderRadius: Dimens.borderRadius12PX,
            ),
            child: Row(
              children: [
                Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    color: context.colors.white,
                    borderRadius: Dimens.borderRadius4PX,
                  ),
                ),
                Gaps.hGap10,
                Container(
                  width: 130,
                  height: 14,
                  decoration: BoxDecoration(
                    color: context.colors.white,
                    borderRadius: Dimens.borderRadius4PX,
                  ),
                ),
              ],
            ),
          ),
        ),
        Gaps.vGap10,
      ],
    );
  }
}
