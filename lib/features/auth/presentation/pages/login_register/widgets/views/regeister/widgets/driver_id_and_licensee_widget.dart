import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/login_register/widgets/views/regeister/widgets/driver_licensee_widget.dart';

import 'register_widgets_imports.dart';



class DriverIdAndLicenseeWidget extends StatelessWidget {
  final RegisterController controller;
  const DriverIdAndLicenseeWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      // spacing: 10,
      children: [
        Row(
          children: [
            DriverLicenseeWidget(
              fileObs: controller.idFileObs,
              title: Translate.s.id,
              subTitle: Translate.s.attach_id,
              pickFile: () => controller.pickIdLicenseFile(context,controller.idFileObs),
            ),
            Gaps.hGap7,
            DriverLicenseeWidget(
              fileObs: controller.licenseFileObs,
              title: Translate.s.driving_licensee,
              pickFile: () => controller.pickIdLicenseFile(context,controller.licenseFileObs),
              subTitle: Translate.s.attach_driving_licensee,
            ),
          ],
        ),
        Gaps.vGap30,
        Row(
          children: [
            DriverLicenseeWidget(
              fileObs: controller.backIdFileObs,
              title: Translate.s.id,
              subTitle: "Attach Back ID",
              pickFile: () => controller.pickIdLicenseFile(context,controller.backIdFileObs),
            ),
            Gaps.hGap7,
            DriverLicenseeWidget(
              fileObs: controller.backLicenseFileObs,
              title: Translate.s.driving_licensee,
              pickFile: () => controller.pickIdLicenseFile(context,controller.backLicenseFileObs),
              subTitle: "Attach Back Driving Licensee",
            ),
          ],
        ),
      ],
    );
  }
}
