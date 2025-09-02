
import 'package:flutter_tdd/core/widgets/bottom_sheet_header_widget.dart';

import '../wallet_imports.dart';


class BalanceWithdrawSheet extends StatelessWidget {
  final WalletController controller;
  const BalanceWithdrawSheet({super.key, required this.controller,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 27),
      decoration: BoxDecoration(
        color: context.colors.background,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const BottomSheetHeaderWidget(title: "Balance Withdraw"),
          Gaps.vGap40,
          GenericTextField(
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.done,
            fillColor: context.colors.white,
            validate: (value) => value?.validateEmpty(),
            hint: "Enter the Balance",
            hintColor: context.colors.gray3,
            radius: BorderRadius.circular(30),
            suffixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text('AED',
                  style: AppTextStyle.s18_w600(color: context.colors.primary),
                )
            ),
          ),
          Gaps.vGap32,
          AppTextButton.maxPrimary(
            text: 'Send Request',
            onPressed: ()=> controller.successfullySendRequestDialog(context),
          ),
        ],
      ),
    );
  }
}
