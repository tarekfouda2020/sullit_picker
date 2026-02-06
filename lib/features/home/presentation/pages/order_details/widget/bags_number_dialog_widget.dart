import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/widgets/dirham_price_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';

import '../../../../../../core/helpers/export.dart';

class BagsNumberDialogWidget extends StatelessWidget {
  final OrderDetailsController controller;
  const BagsNumberDialogWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 15),
      backgroundColor: context.colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
      content: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              Res.warningIcon,
              width: 61,
              height: 61,
            ),
            Gaps.vGap21,
            Text(
              Translate.s.confirm_used_bags,
              style: AppTextStyle.s18_w700(color: context.colors.black)
                  .copyWith(height: 1.2),
              textAlign: TextAlign.center,
            ),
            Gaps.vGap12,
            ObsValueConsumer(
              observable: controller.bagsCountObs,
              builder: (context, value) {
                return Container(
                  height: 40,
                  width: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: context.colors.primary.withAlpha(30),
                      borderRadius: Dimens.borderRadius12PX),
                  child: Text(
                    "$value ${Translate.s.bags}",
                    style: AppTextStyle.s18_w700(color: context.colors.primary),
                  ),
                );
              },
            ),
            Gaps.vGap20,
            AppTextButton.maxCustom(
              text: Translate.s.complete_dispatch,
              textSize: 18,
              txtColor: context.colors.white,
              bgColor: context.colors.appGreen,
              onPressed: () => controller.prepareOrder(context),
            ),
            Gaps.vGap18,
            GestureDetector(
              onTap: () => controller.shoModifyBagsDialog(context),
              child: Text(
                Translate.s.no_edit_number,
                style: AppTextStyle.s16_w400(color: context.colors.primary),
              ),
            )
          ],
        ),
      ),
    );
  }
}
