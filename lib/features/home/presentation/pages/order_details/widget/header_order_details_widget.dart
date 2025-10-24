import 'package:flutter_svg/svg.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/date_time_helper.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/res.dart';

import 'widgets_imports.dart';

class HeaderOrderDetailsWidget extends StatelessWidget {
  final OrderModel data;

  const HeaderOrderDetailsWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: SvgPicture.asset(
                Res.arrow,
                colorFilter: ColorFilter.mode(context.colors.simiGray, BlendMode.srcIn),
                width: 24,
                height: 24,
              ),
            ),
            Gaps.hGap14,
            Text(
              'Order No. : ',
              style: AppTextStyle.s18_w300(color: context.colors.simiGray),
            ),
            Text(
              data.code,
              style: AppTextStyle.s18_w600(color: context.colors.primary),
            ),
          ],
        ),
        Gaps.vGap8,
        ObsValueConsumer(
          observable: DateTimeHelper.getDifferenceFromCurrentDate(data.startPickingAt),
          builder: (context, assignedTime) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38),
            child: Text('Assigned $assignedTime', style: AppTextStyle.s14_w300(color: context.colors.textColor)),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 38),
        //   child: Text('Assigned 2 min ago',style: AppTextStyle.s14_w300(color: context.colors.textColor),),
        // )
      ],
    );
  }
}
