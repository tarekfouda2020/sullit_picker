import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_history_details/order_history_details_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_history_details/widgets/order_history_widgets_imports.dart';

import '../../../../../core/helpers/export.dart';

import 'package:flutter_tdd/features/home/presentation/widgets/order_invoice_widget.dart';

@RoutePage(name: "OrderHistoryDetailsPage")
class OrderHistoryDetails extends StatefulWidget {
  final int id;
  const OrderHistoryDetails({super.key, required this.id});

  @override
  State<OrderHistoryDetails> createState() => _OrderHistoryDetailsState();
}

class _OrderHistoryDetailsState extends State<OrderHistoryDetails> {
  late final OrderHistoryDetailsController controller;

  @override
  void initState() {
    super.initState();
    controller = OrderHistoryDetailsController(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: DefaultAppBar(title: Translate.s.order_details),
      body: RequesterConsumer<OrderModel>(
        requester: controller.detailsRequester,
        successBuilder: (context, data, isLoading) {
          return ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            children: [
              OrderHistoryInfoWidget(order: data),
              Gaps.vGap24,
              OrderHistoryProductsWidget(
                  products: data.displayItems ?? <OrderDisplayItem>[]),
              Gaps.vGap24,
              OrderInvoiceWidget(invoice: data.invoiceModel),
              Gaps.vGap32,
            ],
          );
        },
        loadingBuilder: (context) => const OrderHistoryDetailsShimmer(),
        failureBuilder: (context, error, callback) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Translate.s.something_went_wrong, // Ensure key exists
                  style: const AppTextStyle.s16_w500(color: Colors.red),
                ),
                const SizedBox(height: 16),
                AppTextButton.maxPrimary(
                  text: Translate.s.retry,
                  onPressed: callback,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
