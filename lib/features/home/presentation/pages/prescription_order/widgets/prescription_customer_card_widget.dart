import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc_builder.dart';
import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/features/home/data/model/prescription_order_details/pharmacy_order_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/prescription_order/widgets/prescription_customer_card_shimmer_widget.dart';
import 'package:flutter_tdd/features/orders/data/model/order_model/order_model.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/customer_name_type_widget.dart';

class PrescriptionCustomerCardWidget extends StatelessWidget {
  final BaseBloc<PharmacyOrderModel> orderCubit;
  final void Function(CustomerModel customer) onTap;

  const PrescriptionCustomerCardWidget({
    super.key,
    required this.orderCubit,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BaseBlocBuilder<PharmacyOrderModel>(
      bloc: orderCubit,
      onLoadingWidget: (_) => const PrescriptionCustomerCardShimmerWidget(),
      onSuccessWidget: (order) => _buildCard(context, order.customer),
    );
  }

  Widget _buildCard(BuildContext context, CustomerModel customer) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        Text("Order Number : ${orderCubit.data!.code}",
          style: AppTextStyle.s14_w500(color: context.colors.primary),
        ),
        GestureDetector(
          onTap: () => onTap(customer),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
            decoration: BoxDecoration(
              color: context.colors.white,
              borderRadius: Dimens.borderRadius8PX,
              border: Border.all(color: context.colors.borderLight),
            ),
            child: Row(
              children: [
                Expanded(child: CustomerNameTypeWidget(customer: customer)),
                Icon(Icons.chevron_right, color: context.colors.simiGray),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
