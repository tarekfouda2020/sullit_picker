import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/order_details_header_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/pick_item_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/timer_card_details_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/used_bags_number_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/user_notes_widget.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/order_invoice_widget.dart';
import '../../../../../../core/bloc/base_bloc/base_bloc_builder.dart';
import '../order_details_controller.dart';
import '../order_details_imports.dart';
import 'header_order_details_widget.dart';
import 'update_invoice_shimmer_widget.dart';

class DetailsSuccessViewWidget extends StatelessWidget {
  final OrderDetailsController controller;
  final OrderModel data;
  const DetailsSuccessViewWidget({super.key, required this.controller, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gaps.vGap(controller.getHeight+10),
        OrderDetailsHeaderWidget(data: data),
        Gaps.vGap5,
        Expanded(
          child: ListView(
            padding: const EdgeInsets.only(top: 20),
            children: [
              HeaderOrderDetailsWidget(
                data: data,
                controller: controller,
              ),
              Gaps.vGap12,
              Visibility(
                  visible: data.pickerNotes.isNotEmpty,
                  child: UserNotesWidget(notes: data.pickerNotes,)
              ),
              Gaps.vGap12,
              TimerCardDetailsWidget(
                  data: data, controller: controller),
              Gaps.vGap12,
              ...List.generate(data.ordersDetails!.length, (index) {
                return PickItemWidget(
                  orderDetails: data.ordersDetails![index],
                  controller: controller,
                );
              }),
              UsedBagsNumberWidget(controller: controller),
              BaseBlocBuilder(
                bloc: controller.refreshInvoiceCubit,
                onSuccessWidget: (refresh) {
                  return OrderInvoiceWidget(invoice: data.invoiceModel);
                },
                onLoadingWidget: (context) {
                  return UpdateInvoiceShimmerWidget(invoice:data.invoiceModel,);
                },
              ),
              Gaps.vGap32,
            ],
          ),
        ),
      ],
    );
  }
}
