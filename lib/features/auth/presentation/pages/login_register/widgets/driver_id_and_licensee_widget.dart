import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/login_register/login_register_imports.dart';


class DriverIdAndLicenseeWidget extends StatelessWidget {
  final LoginRegisterController controller;
  const DriverIdAndLicenseeWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AuthSectionTitleWidget(title: Translate.s.id,paddingFromBottom: 8,),
              ObsValueConsumer(
                observable: controller.idFileObs,
                builder: (context,value) {
                  return GestureDetector(
                    onTap: ()=> controller.pickIdFile(context),
                    child: Container(
                      height: 120,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: context.colors.white,
                        borderRadius: Dimens.borderRadius12PX,
                        border: Border.all(color: context.colors.inputBorder),
                      ),
                      child: Visibility(
                        visible: value == null,
                        replacement: ClipRRect(
                          borderRadius: Dimens.borderRadius12PX,
                            child: SizedBox.expand(
                              child: Image.file(value??File(""),
                                fit: BoxFit.cover,
                              ),
                            )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add,
                              size: 32,
                              color: context.colors.hintText,
                            ),
                           Gaps.vGap8,
                            Text(
                              S.of(context).attach_id,
                              style: AppTextStyle.s12_w400(color: context.colors.hintText),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }
              ),
            ],
          ),
        ),
        Gaps.hGap7,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AuthSectionTitleWidget(title: Translate.s.driving_licensee,paddingFromBottom: 8,),
              ObsValueConsumer(
                observable: controller.licenseFileObs,
                builder: (context,value) {
                  return GestureDetector(
                    onTap: () => controller.pickLicenseFile(context),
                    child: Container(
                      height: 120,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: context.colors.white,
                        borderRadius: Dimens.borderRadius12PX,
                        border: Border.all(color: context.colors.inputBorder),
                      ),
                      child: Visibility(
                        visible: value == null,
                        replacement: ClipRRect(
                            borderRadius: Dimens.borderRadius12PX,
                            child: SizedBox.expand(
                              child: Image.file(value??File(""),
                                fit: BoxFit.cover,
                              ),
                            )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add,
                              size: 32,
                              color: context.colors.hintText,
                            ),
                          Gaps.vGap8,
                            Text(
                              S.of(context).attach_driving_licensee,
                              style: AppTextStyle.s12_w400(color: context.colors.hintText),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }
              ),
            ],
          ),
        ),
      ],
    );
  }

}
