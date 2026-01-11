
import 'package:flutter_tdd/core/widgets/bottom_sheets_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_history_details/widgets/order_info_row_widget.dart';

import '../../order_details/order_details_imports.dart';
import 'section_title_widget.dart';

class DriverSectionInfoWidget extends StatelessWidget {
  final DriverModel driverInfo;
  const DriverSectionInfoWidget({super.key, required this.driverInfo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitleWidget(title: "Driver Info"),
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
                OrderInfoRowWidget(label: "name", value: driverInfo.name ),
                GestureDetector(
                    onTap: () => BottomSheetsWidget.showContactWithSheet(
                        context,
                        driverInfo.phone
                    ),
                    child: OrderInfoRowWidget(label: "phone", value: driverInfo.phone )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
