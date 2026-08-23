import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc_builder.dart';
import 'package:flutter_tdd/features/home/data/model/prescription_order_details/pharmacy_order_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/prescription_order/widgets/prescription_summary_chips_row_widget.dart';

import '../../../../../../core/helpers/export.dart';

class PrescriptionOrderSummaryWidget extends StatelessWidget {
  final ObsValue<String?> insuranceDiscountObs;
  final ObsValue<String?> bagsCountObs;
  final VoidCallback onEditInsuranceDiscount;
  final VoidCallback onEditBagsCount;
  final BaseBloc<PharmacyOrderModel> orderCubit;

  const PrescriptionOrderSummaryWidget({
    super.key,
    required this.insuranceDiscountObs,
    required this.bagsCountObs,
    required this.onEditInsuranceDiscount,
    required this.onEditBagsCount,
    required this.orderCubit,
  });

  @override
  Widget build(BuildContext context) {
    return BaseBlocBuilder<PharmacyOrderModel>(
      bloc: orderCubit,
      onSuccessWidget: (order) => PrescriptionSummaryChipsRowWidget(
        order: order,
        insuranceDiscountObs: insuranceDiscountObs,
        bagsCountObs: bagsCountObs,
        onEditInsuranceDiscount: onEditInsuranceDiscount,
        onEditBagsCount: onEditBagsCount,
      ),
      onLoadingWidget: (context) => Gaps.empty,
    );
  }
}
