import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/app_button.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/pick_item_widget.dart';

import 'widgets_imports.dart';
class PickCategoryWidget extends StatelessWidget {
  final String catTitle;
  const PickCategoryWidget({super.key, required this.catTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: 44,
          decoration: BoxDecoration(
            color: context.colors.catCardColor,
            borderRadius: Dimens.borderRadius12PX,
          ),
          child: Text(catTitle,style:AppTextStyle.s18_w700(color: context.colors.simiGray),),
        ),
        Gaps.vGap12,
        const PickItemWidget(title: 'Poultry',)
      ],
    );
  }
}
