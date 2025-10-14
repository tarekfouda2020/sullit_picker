import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';

import 'dialog_action_widget.dart';

class PickItemWidget extends StatelessWidget {
  final OrderDetailsController controller;
  final String title;
  final String image;
  final String description;
  final String subDescription;
  final String count;
  final String? status;
  final bool canReplaced;
  final VoidCallback onPressed;

  const PickItemWidget({
    super.key,
    required this.title,
    required this.image,
    required this.controller,
    required this.description,
    required this.count,
    required this.subDescription,
    this.status,
    this.canReplaced = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.s18_w700(color: context.colors.simiGray),
        ),
        Gaps.vGap7,
        Stack(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
              decoration: BoxDecoration(
                  color: context.colors.white,
                  borderRadius: Dimens.borderRadius10PX,
                  border: const Border(
                      bottom: BorderSide(color: Colors.green, width: 4))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(image),
                          ),
                        ),
                      ),
                      Gaps.hGap10,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            description,
                            maxLines: 2,
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            style: AppTextStyle.s14_w600(
                                color: context.colors.simiGray),
                          ),
                          Gaps.vGap5,
                          Text(
                            subDescription,
                            style: AppTextStyle.s14_w400(
                                color: context.colors.simiGray),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: ObsValueConsumer(
                          observable: controller.isPicked,
                          builder: (context, isPicked) =>
                              AppTextButton.maxCustom(
                            text: isPicked ? 'Picked' : 'Pick',
                            bgColor: isPicked
                                ? const Color(0xFFE3FFE3)
                                : context.colors.primary,
                            txtColor: isPicked
                                ? const Color(0xFF009900)
                                : context.colors.white,
                            textSize: 16,
                            maxHeight: 40,
                            borderRadius: Dimens.borderRadius30PX,
                            onPressed: onPressed,
                          ),
                        ),
                      ),
                      Gaps.hGap6,
                      Column(
                        children: [
                          Text(
                            'Qnt',
                            style: AppTextStyle.s14_w400(
                                color: context.colors.textColor),
                          ),
                          Gaps.vGap8,
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            decoration: BoxDecoration(
                                color: context.colors.lightPrimary,
                                borderRadius: Dimens.borderRadius30PX),
                            child: Text(
                              count,
                              style: AppTextStyle.s18_w600(
                                  color: context.colors.primary),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Gaps.vGap10,
                  Text(
                    'Picked 100%',
                    style:
                        AppTextStyle.s14_w400(color: context.colors.textColor),
                  )
                ],
              ),
            ),
            Visibility(
              visible: canReplaced,
              replacement: Positioned(
                  top: 18,
                  right: 20,
                  /// ToDo replace Dialogs Here
                  child: GestureDetector(
                    onTap: () => showDialog(
                        context: context,
                        builder: (context) => DialogActionWidget(
                              description:
                                  'Are you sure you want replace this product ?',
                              buttonGreenTitle: 'Yes Replace',
                              buttonRedTitle: 'Cancel',
                              greenOnTap: () => showDialog(
                                context: context,
                                builder: (context) => DialogActionWidget(
                                  description:
                                      'User didn’t give access to replace the product , you can just remove it from order',
                                  buttonGreenTitle: 'Yes Remove',
                                  buttonRedTitle: 'Cancel',
                                  greenOnTap: () {
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  },
                                  redOnTap: () {
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                              redOnTap: () {
                                Navigator.pop(context);
                              },
                            )),
                    child: Icon(
                      Icons.repeat_outlined,
                      color: context.colors.primary,
                      size: 22,
                    ),
                  )),
              child: Positioned(
                right: 0,
                child: Container(
                  alignment: Alignment.center,
                  height: 33,
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  decoration: BoxDecoration(
                      color: context.colors.background,
                      // border: const Border(top: BorderSide(color: Colors.black12,width:0.5)),
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(12))),
                  child: Text(
                    status ?? '',
                    style: const AppTextStyle.s14_w700(color: Color(0xFF758D00)),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
