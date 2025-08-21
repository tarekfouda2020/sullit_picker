import 'package:flutter_tdd/core/widgets/CachedImage.dart';

import 'wallet_widgets_imports.dart';

class RechargeWalletSheet extends StatelessWidget {
  final WalletController controller;

  const RechargeWalletSheet({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 27),
      decoration: BoxDecoration(
        color: context.colors.background,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Form(
        key: controller.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Gaps.hGap32,
                Text(
                  'Charge wallet Balance',
                  style: AppTextStyle.s20_w700(color: context.colors.black),
                ),
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      size: 30,
                      color: context.colors.black,
                    )),
              ],
            ),
            Gaps.vGap40,
            const AuthSectionTitleWidget(title: 'Amount'),
            GenericTextField(
              controller: controller.amountController,
              fieldTypes: FieldTypes.normal,
              type: TextInputType.number,
              action: TextInputAction.done,
              fillColor: context.colors.white,
              validate: (value) => value?.validateEmpty(),
              hint: "Enter Amount",
              textColor: context.colors.gray3,
              hintColor: context.colors.gray3,
              radius: BorderRadius.circular(30),
            ),
            Gaps.vGap12,
            const AuthSectionTitleWidget(title: 'Payment Method'),
            ObsValueConsumer(
                observable: controller.selectedPaymentMethodObs,
                builder: (context, selectedPaymentMethod) {
                  return GestureDetector(
                    onTap: () => controller.chargingWalletPaymentMethodSheet(context),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                      decoration: BoxDecoration(
                        color: context.colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Visibility(
                        visible: selectedPaymentMethod == null,
                        replacement: Row(
                          children: [
                            CachedImage(
                              url: selectedPaymentMethod?.image??"",
                              height: 40,
                              width: 40,
                              haveRadius: false,
                              boxShape: BoxShape.circle,
                              fit: BoxFit.contain,
                            ),
                            Gaps.hGap12,
                            Text(
                              selectedPaymentMethod?.name??'',
                              style: AppTextStyle.s14_w400(color: context.colors.gray3),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: context.colors.black,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Select Payment Method',
                              style: AppTextStyle.s14_w400(color: context.colors.gray3),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: context.colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
            Gaps.vGap32,
            AppTextButton.maxPrimary(
              text: 'Continue To Payment',
              onPressed: ()=> controller.chargeWallet(context),
            ),
          ],
        ),
      ),
    );
  }
}
