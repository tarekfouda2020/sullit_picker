import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/res.dart';

import 'widgets_imports.dart';
class PickItemWidget extends StatelessWidget {
  final String title;
  const PickItemWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style:AppTextStyle.s18_w700(color: context.colors.simiGray),),
        Gaps.vGap7,
        Stack(
          children: [
            Positioned(
                child: Container(
                  height: 40,
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
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
              decoration: BoxDecoration(
                color: context.colors.background,
                borderRadius: Dimens.borderRadius10PX,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 52,
                        width: 52,
                        decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage(Res.locationIcon),),

                        ),
                      ),
                      Gaps.hGap10,
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Fresh Whole Chicken',style: AppTextStyle.s14_w600(color: context.colors.simiGray),),
                          Gaps.vGap5,
                          Text('900 gm',style: AppTextStyle.s14_w400(color: context.colors.simiGray),)
                        ],
                      ),
                      Expanded(child: Icon(Icons.repeat_outlined,color: context.colors.primary,size: 18,))
                    ],
                  )
                ],
              )
            ),
          ],
        )
      ],
    );
  }
}
