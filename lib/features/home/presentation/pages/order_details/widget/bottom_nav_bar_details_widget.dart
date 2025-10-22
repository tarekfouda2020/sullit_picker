import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';

import 'widgets_imports.dart';
class BottomNavBarDetailsWidget extends StatelessWidget {
  final OrderDetailsController controller;
  const BottomNavBarDetailsWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppTextButton.maxCustom(
              text: 'Send to cashier',
            borderRadius: BorderRadius.circular(40),
            onPressed: (){},
            textSize: 18,
            txtColor: context.colors.white,
            bgColor: context.colors.appGreen,
            maxHeight: 50,
          ),
          Gaps.vGap10,
          AppTextButton.maxCustom(
              text: 'Cancel Order',
            borderRadius: BorderRadius.circular(40),
            onPressed: (){
                controller.cancelOrder(context,);
            },
            textSize: 18,
            txtColor: context.colors.white,
            bgColor: context.colors.primary,
            maxHeight: 50,
          ),
        ],
      ),
    );
  }
}
