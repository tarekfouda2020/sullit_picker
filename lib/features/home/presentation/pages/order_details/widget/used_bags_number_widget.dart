
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';

import '../../../../../../core/helpers/export.dart';
import 'edit_price_widget.dart';

class UsedBagsNumberWidget extends StatelessWidget {
  final OrderDetailsController controller;
  const UsedBagsNumberWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
      observable: controller.isAllPickedObs,
      builder: (context, value) {
      return Visibility(
        visible: value,
        child: Padding(
          padding: const EdgeInsets.only(top: 12,bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Text("Number of used bags",
                style: AppTextStyle.s16_w700(color: context.colors.black),
              ),
              Container(
                padding: const EdgeInsetsDirectional.only(start: 32,end: 22,top: 13,bottom: 13),
                decoration: BoxDecoration(
                    color: context.colors.white,
                    borderRadius: Dimens.borderRadius30PX,
                    border: Border.all(color: context.colors.borderLight)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ObsValueConsumer(
                      observable: controller.bagsCountObs,
                      builder: (context, value) {
                        return Text("$value",
                          style: AppTextStyle.s18_w800(color: context.colors.primary),
                        );
                      },),
                    EditPriceWidget(onTap: () => controller.shoModifyBagsDialog(context)),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    },);
  }
}
