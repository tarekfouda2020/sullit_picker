import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_tdd/features/subscriptions/data/models/current_subscription_model/current_subscription_model.dart';

import 'subscription_widgets_imports.dart';

class SubscriptionContentWidget extends StatelessWidget {
  final CurrentSubscriptionModel model;
  const SubscriptionContentWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 19),
      decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: Dimens.borderRadius12PX,
          border: Border.all(color: context.colors.borderLight)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(model.price,
                style: AppTextStyle.s22_w600(color: context.colors.primary),
              ),
              Text(" /${model.duration}",
                style: AppTextStyle.s22_w300(color: context.colors.primary),
              ),
            ],
          ),
          Gaps.vGap12,
          Text(Translate.of(context).benefits,
            style: AppTextStyle.s12_w600(color: context.colors.black),
          ),
          Gaps.vGap8,
          if(model.description!=null)
            Html(data: model.description,
            style: {
              "body" : Style(
                  color: context.colors.gray58,
                  fontSize: FontSize(12),
                  fontWeight: FontWeight.w400
              )
            }
            ),
          if(model.description==null)
          ...List.generate(3, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Row(
                children: [
                  Container(
                    width: 2, height: 2,
                    decoration:  BoxDecoration(
                        shape: BoxShape.circle,
                        color: context.colors.gray58
                    ),
                  ),
                  Gaps.hGap8,
                  Text("Lorem Ipsum is simply dummy text of the printing ",
                    style: AppTextStyle.s12_w400(color: context.colors.gray58),
                  )
                ],),
            );
          },),
          Gaps.vGap10,
          Divider(color: context.colors.gray58,),
          Gaps.vGap10,
          Text(Translate.of(context).expired_within_days(model.daysRemaining.toString()),
          style: AppTextStyle.s12_w400(color: context.colors.gray58),
          )
        ],
      ),
    );
  }
} 