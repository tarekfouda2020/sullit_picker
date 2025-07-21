import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

import 'register_widgets_imports.dart';

class DriverLicenseeWidget extends StatelessWidget {
  final ObsValue<File?> fileObs;
  final String title;
  final String subTitle;
  final void Function() pickFile;

  const DriverLicenseeWidget({
    super.key,
    required this.fileObs,
    required this.title,
    required this.pickFile,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AuthSectionTitleWidget(
            title: title,
            paddingFromBottom: 8,
          ),
          ObsValueConsumer(
              observable: fileObs,
              builder: (context, value) {
                return GestureDetector(
                  onTap: pickFile,
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
                            child: Image.file(
                              value ?? File(""),
                              fit: BoxFit.cover,
                            ),
                          )),
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
                            subTitle,
                            style: AppTextStyle.s12_w400(color: context.colors.hintText),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
