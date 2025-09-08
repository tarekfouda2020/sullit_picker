import 'package:flutter_tdd/features/home/data/enum/order_status_enum.dart';
import 'package:flutter_tdd/features/orders/data/enum/order_status.dart';
import 'package:flutter_tdd/features/orders/data/models/order_model/order_model.dart';

import 'bottom_nav_widget.dart';
import 'home_widgets_imports.dart';

class PageContentWidget extends StatelessWidget {
  final HomeController controller;
  final OrderModel model;

  const PageContentWidget({super.key, required this.controller, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: [
        Expanded(
          child: ListView(
            padding: Dimens.paddingH20Px,
            children: [
              HomeHeaderWidget(controller: controller),
              Gaps.vGap14,
              CustomSearchBar(controller: controller),
              Gaps.vGap16,
              OrderNotification(model: model),
              OrderPayStatusWidget(
                model: model,
              ),
              Gaps.vGap20,
              InfoSection(
                title: Translate.of(context).customer_name,
                content: model.customerName,
                iconPath: Res.personIcon,
              ),
              Gaps.vGap12,
              InfoSection(
                title: Translate.s.payment_method,
                content: model.paymentMethodLabel,
                iconPath: Res.paymentCards,
                isPaymentLink: false,
                sendPaymentLink: () {},
              ),
              Gaps.vGap12,
              HomeSectionsTitleWidget(title: Translate.s.address),
              Gaps.vGap6,
              AddressDetails(controller: controller, model: model),
              Gaps.vGap50,
            ],
          ),
        ),
        Visibility(
          visible: !model.isReported,
          replacement: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: AppTextButton.maxCustom(
              onPressed: () => controller.showReportReasonSheet(context),
              text: "Order Reported",
              bgColor: context.colors.primary,
              txtColor: context.colors.white,
              borderColor: context.colors.primary,
            ),
          ),
          child: BottomNavWidget(
            controller: controller,
            model: model,
          ),
        ),
        Gaps.vGap10,
      ],
    );
  }
}
