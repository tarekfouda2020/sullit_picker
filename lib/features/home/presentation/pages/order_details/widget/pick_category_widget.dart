import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/app_button.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/dialog_action_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/pick_item_widget.dart';
import 'package:flutter_tdd/res.dart';

import 'dialog_new_weight_widget.dart';
import 'widgets_imports.dart';

class PickCategoryWidget extends StatelessWidget {
  final OrderDetailsController controller;

  const PickCategoryWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView(
        padding: Dimens.paddingH20Px,
        children: [
          Container(
            alignment: Alignment.center,
            height: 44,
            decoration: BoxDecoration(
              color: context.colors.catCardColor,
              borderRadius: Dimens.borderRadius12PX,
            ),
            child: Text(
              'Fresh Food & Deli',
              style: AppTextStyle.s18_w700(color: context.colors.simiGray),
            ),
          ),
          Gaps.vGap12,
          PickItemWidget(
            title: 'Poultry',
            controller: controller,
            image: Res.chickenImage,
            description: 'Fresh Whole Chicken',
            count: '2',
            subDescription: '900 gm',
            status: 'Modified',
            canReplaced: true,
            onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => DialogActionWidget(
                description: 'Is the weight equals 900 gm ?',
                buttonGreenTitle: 'Equals',
                buttonRedTitle: 'Less Than',
                greenOnTap: () {
                  print('Equals');
                },
                redOnTap: () => showDialog(
                  context: context,
                  builder: (context) => const DialogNewWeightWidget(
                    titleItem: 'Fresh Whole Chicken',
                    cheekWeight: 'The new weight must not less than 750 gm',
                    imageItem: Res.beefImage,
                  ),
                ),
              ),
            ),
          ),
          Gaps.vGap12,
          PickItemWidget(
            title: 'Butchery',
            controller: controller,
            image: Res.beefImage,
            description: 'Brazilian Low-Fat Beef Mince',
            count: '1',
            subDescription: '500 gm',
            canReplaced: false,
            onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => DialogActionWidget(
                description: 'Is the weight equals 500 gm ?',
                buttonGreenTitle: 'Equals',
                buttonRedTitle: 'Less Than',
                greenOnTap: () {
                  print('Equals');
                },
                redOnTap: () {
                  print('Less Than');
                },
              ),
            ),
          ),
          Gaps.vGap20,
          Container(
            alignment: Alignment.center,
            height: 44,
            decoration: BoxDecoration(
              color: context.colors.catCardColor,
              borderRadius: Dimens.borderRadius12PX,
            ),
            child: Text(
              'Dairy&Eggs',
              style: AppTextStyle.s18_w700(color: context.colors.simiGray),
            ),
          ),
          Gaps.vGap12,
          PickItemWidget(
            title: 'Milk',
            controller: controller,
            image: Res.organicMilk,
            description: 'Meliha Fresh Organic Full Fat',
            count: '1',
            subDescription: 'Milk 2L',
            status: 'Replaced',
            canReplaced: true,
            onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => DialogActionWidget(
                description: 'Are you sure you want replace this product ?',
                buttonGreenTitle: 'Yes Replace',
                buttonRedTitle: 'Cancel',
                greenOnTap: () {
                  print('Replaced');
                },
                redOnTap: () {
                  print('Canceled');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
