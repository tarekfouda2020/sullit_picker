import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/app_button.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/pick_item_widget.dart';
import 'package:flutter_tdd/res.dart';

import 'widgets_imports.dart';

class PickCategoryWidget extends StatelessWidget {
  final String catTitle;
  final OrderDetailsController controller;

  const PickCategoryWidget(
      {super.key, required this.catTitle, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            height: 44,
            decoration: BoxDecoration(
              color: context.colors.catCardColor,
              borderRadius: Dimens.borderRadius12PX,
            ),
            child: Text(
              catTitle,
              style: AppTextStyle.s18_w700(color: context.colors.simiGray),
            ),
          ),
          Gaps.vGap12,
          PickItemWidget(
            title: 'Poultry',
            controller: controller,
            image: Res.chickenImage,
            description: 'Fresh Whole Chicken',
            count: '1',
            subDescription: '900 gm',
          ),
          Gaps.vGap12,
          PickItemWidget(
            title: 'Butchery',
            controller: controller,
            image: Res.beefImage,
            description: 'Brazilian Low-Fat Beef Mince',
            count: '1',
            subDescription: '500 gm',
          ),
        ],
      ),
    );
  }
}
