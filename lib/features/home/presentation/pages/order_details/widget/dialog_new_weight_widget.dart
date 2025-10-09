import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';

import 'widgets_imports.dart';

class DialogNewWeightWidget extends StatelessWidget {
  final String titleItem;
  final String imageItem;
  final String cheekWeight;

  const DialogNewWeightWidget(
      {super.key, required this.titleItem, required this.cheekWeight, required this.imageItem});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'What is the New Weight ?',
        style: AppTextStyle.s18_w700(color: context.colors.textColor),
      ),
      // titlePadding: const EdgeInsets.fromLTRB(38, 25, 38, 11),
      backgroundColor: context.colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                imageItem,
                width: 52,
                height: 52,
              ),
              Gaps.hGap10,
              Text(
                titleItem,
                style: AppTextStyle.s14_w600(color: context.colors.textColor)
                    .copyWith(height: 1.2),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Gaps.vGap7,
          Flexible(
            child: GenericTextField(
              fieldTypes: FieldTypes.normal,
              type: TextInputType.number,
              action: TextInputAction.done,
              validate: (value) => value!.validateEmpty(),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 36, vertical: 16),
              // margin: const EdgeInsets.symmetric(vertical: 10),
              fillColor: context.colors.background,
              hint: 'Enter new weight',
              hintColor: context.colors.textColor,
              radius: Dimens.borderRadius30PX,
              hintSize: 14,
            ),
          ),
          Gaps.vGap11,
          Row(
            children: [
              SvgPicture.asset(
                Res.warningIcon,
                width: 17,
                height: 17,
              ),
              Gaps.hGap4,
              Expanded(
                child: Text(
                  cheekWeight,
                  style: AppTextStyle.s12_w300(color: context.colors.primary).copyWith(height: 1.2),
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  softWrap: true,
                ),
              ),
            ],
          ),
          Gaps.vGap28,
          AppTextButton.maxCustom(
            text: 'Confirm',
            txtColor: context.colors.white,
            textSize: 16,
            bgColor: context.colors.primary,
            borderRadius: BorderRadius.circular(40),
            maxHeight: 40,
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
