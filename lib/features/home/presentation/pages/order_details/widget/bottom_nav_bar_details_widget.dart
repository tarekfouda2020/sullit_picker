import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc_builder.dart';
import 'package:flutter_tdd/core/widgets/shimmers/base_shimmer_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';

import 'dispatch_button_widget.dart';
import 'send_to_cashier_button_widget.dart';
import 'widgets_imports.dart';
class BottomNavBarDetailsWidget extends StatelessWidget {
  final OrderDetailsController controller;
  const BottomNavBarDetailsWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context,isOpen) {
        return Visibility(
          visible: !isOpen,
          child: Padding(
            padding: Dimens.paddingH20Px,
            child: BaseBlocBuilder(
              bloc: controller.detailsCubit,
              onSuccessWidget: (data) {
                return ObsValueConsumer(
                  observable: controller.isAllPickedObs,
                  builder: (context,value) {
                    return Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Visibility(
                            visible: value,
                            replacement: SendToCashierButtonWidget(controller: controller),
                            child: DispatchButtonWidget(controller: controller),
                          ),
                          Gaps.vGap10,
                          if(!controller.isAllProductsPicked)
                          AppTextButton.maxCustom(
                            text: Translate.of(context).cancel_order,
                            onPressed: ()=> controller.showCancelOrderDialog(context,),
                            textSize: 18,
                            txtColor: context.colors.white,
                            bgColor: context.colors.primary,
                            maxHeight: 50,
                          ),
                          Gaps.vGap15,
                        ],
                      ),
                    );
                  }
                );
              },
              onFailedWidget: (context, error, callback) {
                return Gaps.empty;
              },
              onLoadingWidget: (context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(2, (index) {
                    return   BaseShimmerWidget(
                        child: Container(
                          height: 50,
                          margin: const EdgeInsets.only(bottom: 15),
                          decoration: BoxDecoration(
                              color: context.colors.white,
                              borderRadius: Dimens.borderRadius30PX
                          ),
                        ));
                  },),
                );
              },

            ),
          ),
        );
      }
    );
  }
}
