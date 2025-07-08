import 'package:flutter_tdd/features/home/data/enum/order_status_enum.dart';

import 'home_widgets_imports.dart';

class PageContentWidget extends StatelessWidget {
  final HomeController controller;
  final OrderStatusEnum status;
  const PageContentWidget({super.key, required this.controller, required this.status});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      children: [
        HomeHeaderWidget(controller: controller),
        Gaps.vGap14,
        CustomSearchBar(controller: controller),
        Gaps.vGap16,
        const OrderNotification(),
        OrderPayStatusWidget(isPaid: status == OrderStatusEnum.delivered),
        Gaps.vGap20,
        InfoSection(
          title: Translate.s.customer_name,
          content: 'Mahmoud Mohamed',
          iconPath: Res.personIcon,
        ),
        Gaps.vGap12,
        InfoSection(
          title: Translate.s.payment_method,
          content: Translate.s.cash_on_delivery,
          iconPath: Res.paymentCards,
          isPaymentLink: true,
          sendPaymentLink: (){},
        ),
        Gaps.vGap12,
        HomeSectionsTitleWidget(title: Translate.s.address),
        Gaps.vGap6,
        AddressDetails(controller:controller,orderStatus: status),
        Gaps.vGap50,
      ],
    );
  }
}
