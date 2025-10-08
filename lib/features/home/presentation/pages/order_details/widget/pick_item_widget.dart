import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/confirm_reset_password/confirm_reset_password_imports.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';
import 'package:flutter_tdd/res.dart';

class PickItemWidget extends StatelessWidget {
  final OrderDetailsController controller;
  final String title;
  final String image;
  final String description;
  final String subDescription;
  final String count;
  final bool canReplaced;
  final bool replaced;
  final bool modified;

  const PickItemWidget({
    super.key,
    required this.title,
    required this.image,
    required this.controller,
    required this.description,
    required this.count,
    required this.subDescription,
    this.canReplaced = true,
    this.replaced = false,
    this.modified = false,
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
            Positioned(
                child: Container(
              height: 161,
              decoration: const BoxDecoration(
                color: Color(0xFF009900),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
            )),
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                decoration: BoxDecoration(
                  color: context.colors.white,
                  borderRadius: Dimens.borderRadius10PX,
                ),
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
                            FittedBox(
                              child: Text(
                                description,
                                maxLines: 2,
                                softWrap: true,
                                overflow: TextOverflow.visible,
                                style: AppTextStyle.s14_w600(
                                    color: context.colors.simiGray),
                              ),
                            ),
                            Gaps.vGap5,
                            Text(
                              subDescription,
                              style: AppTextStyle.s14_w400(
                                  color: context.colors.simiGray),
                            )
                          ],
                        ),
                        // Expanded(child: Icon(Icons.repeat_outlined,color: context.colors.primary,size: 18,))
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
                                  ? context.colors.primary
                                  : const Color(0xFFE3FFE3),
                              txtColor: isPicked
                                  ? context.colors.white
                                  : const Color(0xFF009900),
                              textSize: 16,
                              maxHeight: 40,
                              borderRadius: BorderRadius.circular(40),
                              onPressed: () {
                                controller.isPicked.setValue(!isPicked);
                              },
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
                                  borderRadius: BorderRadius.circular(40)),
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
                      style: AppTextStyle.s14_w400(
                          color: context.colors.textColor),
                    )
                  ],
                )),
            Visibility(
              visible: canReplaced,
              replacement: Positioned(
                  top: 18,
                  right: 20,
                  child: Icon(
                    Icons.repeat_outlined,
                    color: context.colors.primary,
                    size: 22,
                  )),
              child: Positioned(
                right: 0,
                child: Container(
                  alignment: Alignment.center,
                  width: 113,
                  height: 33,
                  decoration: BoxDecoration(
                      color: context.colors.background,
                      // border: const Border(top: BorderSide(color: Colors.black12,width:0.5)),
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(12))),
                  child: const Text('Modified',style: AppTextStyle.s14_w700(color: Color(0xFF758D00)),),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
