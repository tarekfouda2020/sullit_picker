
import 'package:flutter_tdd/core/widgets/bottom_sheets_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_history_details/widgets/order_info_row_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_history_details/widgets/section_title_widget.dart';

import '../../../../../../core/helpers/export.dart';
import '../../order_details/order_details_imports.dart';

class CustomerInfoSectionWidget extends StatelessWidget {
  final CustomerModel customer;
  const CustomerInfoSectionWidget({super.key, required this.customer});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const SectionTitleWidget(title: "Customer Info"),
        Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.only(top: 16),
          decoration:  BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
          child: Column(
            spacing: 15,
            children: [
            OrderInfoRowWidget(label: "name", value: customer.name ),
            GestureDetector(
                onTap: () => BottomSheetsWidget.showContactWithSheet(
                    context,
                    customer.phone
                ),
                child: OrderInfoRowWidget(label: "phone", value: customer.phone )),
            ],
          ),
        ),
      ],
    );
  }
}
