import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc_builder.dart';
import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/core/widgets/shimmers/base_shimmer_widget.dart';
import 'package:flutter_tdd/features/home/data/model/prescription_order_details/pharmacy_order_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/prescription_order/prescription_order_imports.dart';
import 'package:flutter_tdd/features/home/presentation/pages/prescription_order/widgets/prescrption_bottom_nav_widget.dart';

class PrescriptionBottomNavLoaderWidget extends StatelessWidget {
  final PrescriptionOrderController controller;

  const PrescriptionBottomNavLoaderWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return BaseBlocBuilder<PharmacyOrderModel>(
      bloc: controller.orderCubit,
      onLoadingWidget: (_) => const _BottomNavShimmerWidget(),
      onSuccessWidget: (_) => PrescrptionBottomNavWidget(
        isAwaitingCustomer: controller.isAwaitingCustomer,
        onScanProduct: controller.isEditing
            ? () => controller.scanAndAddProduct(context)
            : null,
        onConfirmOrder: controller.isEditing
            ? () => controller.onCompleteOrderPressed(context)
            : null,
        onDispatch: controller.canDispatch
            ? () => controller.dispatchOrder(context)
            : null,
      ),
    );
  }
}

class _BottomNavShimmerWidget extends StatelessWidget {
  const _BottomNavShimmerWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      children: [
        BaseShimmerWidget(
          child: Container(
            width: double.infinity,
            height: 48,
            decoration: BoxDecoration(
              color: context.colors.white,
              borderRadius: Dimens.borderRadius30PX,
            ),
          ),
        ),
        BaseShimmerWidget(
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: context.colors.white,
              borderRadius: Dimens.borderRadius12PX,
            ),
          ),
        ),
      ],
    );
  }
}
