import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/features/notifications/data/models/notification_model/notification_model.dart';

import '../notification_page_imports.dart';

class NotificationCardWidget extends StatelessWidget {
  final NotificationModel model;
  const NotificationCardWidget({super.key, required this.model,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(model.data.type == "picker_order_canceled"){
          AutoRouter.of(context).push(const OrderHistoryPageRoute());
        }
      },
      child: Container(
        padding: const EdgeInsetsDirectional.only(start: 21,top: 16,bottom: 16),
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: Dimens.borderRadius12PX,
          border: Border.all(color: context.colors.inputBorder,),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  Res.sulitLogo,
                  width: 52,
                  height: 25,
                ),
                Gaps.hGap8,
                Flexible(
                  child: Column(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${model.text} ',
                        style: AppTextStyle.s14_w400(color: context.colors.black).copyWith(
                          height: 1.3
                        ),
                      ),
                      Text(
                       model.createdAt,
                        style: AppTextStyle.s12_w400(color: context.colors.gray3),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
} 