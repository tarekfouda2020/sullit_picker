import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/custom_radio_widget.dart';

import '../login_register_imports.dart';


class WorkTypeWidget extends StatelessWidget {
  final WorkTypeModel model;
  final LoginRegisterController controller;
  const WorkTypeWidget({super.key, required this.model, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> controller.onSelectWorkType(model),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: model.isSelected
              ?context.colors.lightPrimary
              :context.colors.white,
          border: Border.all(
            color: model.isSelected
                ?context.colors.primary
                :context.colors.borderLight
          )
        ),
        child: Row(
          children: [
            CustomRadioWidget(selected: model.isSelected),
            Gaps.hGap10,
            Text(model.type.getTitle(),
            style: AppTextStyle.s14_w400(
                color: model.isSelected
                    ?context.colors.primary
                    :context.colors.gray58
            ),
            )
          ],
        ),
      ),
    );
  }
}
