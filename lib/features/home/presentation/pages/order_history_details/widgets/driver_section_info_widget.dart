import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/custom_info_widget.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/custom_phone_icon_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_history_details/widgets/section_title_widget.dart';

import '../../../../../../core/helpers/export.dart';

class DriverSectionInfoWidget extends StatelessWidget {
  final DriverModel driverInfo;
  const DriverSectionInfoWidget({super.key, required this.driverInfo});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gaps.vGap12,
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            color: context.colors.white,
            child: const SectionTitleWidget(title: "Driver Info :")
        ),
        Gaps.vGap12,
        Container(
          color: context.colors.offWhite,
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 12),
          child: Column(
            spacing: 12,
            children: [
              CustomInfoWidget(
                title: driverInfo.name,
                image: Res.personIcon,
              ),
              Gaps.line,
              CustomInfoWidget(
                title: driverInfo.customerPhone,
                image: Res.redPhone,
                iconPadding: const EdgeInsets.all(5),
                endWidget: CustomPhoneIconWidget(phone: driverInfo.customerPhone),

              ),
            ],
          ),
        ),
      ],
    );
  }
}
