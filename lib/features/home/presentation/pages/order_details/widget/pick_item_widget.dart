import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/card_item_pick_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/status_view_widget.dart';


class PickItemWidget extends StatelessWidget {
  final OrderDetailsController controller;
  final OrderDetailsModel data;
  final bool canReplaced;
  final String status;
  final VoidCallback onPressed;

  const PickItemWidget({
    super.key,
    this.canReplaced = false,
    required this.onPressed,
    required this.controller,
    required this.data,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Not Now',
          style: AppTextStyle.s18_w700(color: context.colors.simiGray),
        ),
        Gaps.vGap7,
        Stack(
          children: [
            CardItemPickWidget(
              controller: controller,
              data: data,
              onPressed: onPressed,
            ),
            Visibility(
              visible: canReplaced,
              replacement: Positioned(
                  top: 18,
                  right: 20,
                  /// ToDo replace Dialogs Here
                  child: GestureDetector(
                    onTap: () => controller.showReplaceDialog(context),
                    child: Icon(
                      Icons.repeat_outlined,
                      color: context.colors.primary,
                      size: 22,
                    ),
                  )),
              child:
                  Positioned(right: 0, child: StatusViewWidget(status: status)),
            ),
          ],
        )
      ],
    );
  }
}
