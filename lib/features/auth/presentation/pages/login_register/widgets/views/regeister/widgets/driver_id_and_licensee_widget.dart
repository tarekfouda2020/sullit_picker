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
              title: Translate.of(context).id,
              subTitle: Translate.of(context).attach_id,
              pickFile: () => controller.pickIdLicenseFile(context,controller.idFileObs),
            ),
            Gaps.hGap7,
            DriverLicenseeWidget(
              fileObs: controller.licenseFileObs,
              title: Translate.of(context).driving_licensee,
              pickFile: () => controller.pickIdLicenseFile(context,controller.licenseFileObs),
              subTitle: Translate.of(context).attach_driving_licensee,
            ),
          ],
        ),
        Gaps.vGap30,
        Row(
          children: [
            DriverLicenseeWidget(
              fileObs: controller.backIdFileObs,
              title: Translate.of(context).id,
              subTitle: Translate.of(context).attach_back_id,
              pickFile: () => controller.pickIdLicenseFile(context,controller.backIdFileObs),
            ),
            Gaps.hGap7,
            DriverLicenseeWidget(
              fileObs: controller.backLicenseFileObs,
              title: Translate.of(context).driving_licensee,
              pickFile: () => controller.pickIdLicenseFile(context,controller.backLicenseFileObs),
              subTitle: Translate.of(context).attach_back_driving_licensee,
            ),
          ],
        ),
      ],
    );
  }
}
