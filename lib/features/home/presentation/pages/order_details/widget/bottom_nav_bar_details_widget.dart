import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc_builder.dart';
import 'package:flutter_tdd/core/widgets/shimmers/base_shimmer_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';

import 'widgets_imports.dart';
class BottomNavBarDetailsWidget extends StatelessWidget {
  final OrderDetailsController controller;
  const BottomNavBarDetailsWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BaseBlocBuilder(
      bloc: controller.detailsCubit,
      onSuccessWidget: (data) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppTextButton.maxCustom(
                text: 'Send to cashier',
                onPressed: (){},
                textSize: 18,
                txtColor: controller.isAllProductsPicked
                    ?context.colors.white
                    :context.colors.white.withAlpha(126),
                bgColor: controller.isAllProductsPicked
                    ?context.colors.appGreen
                    :context.colors.appGreen.withAlpha(126),
                maxHeight: 50,
              ),
              Gaps.vGap10,
              AppTextButton.maxCustom(
                text: 'Cancel Order',
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

    );
  }
}
