import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc_builder.dart';

import 'home_widgets_imports.dart';

class AssignedOrdersWidget extends StatelessWidget {
  const AssignedOrdersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  BaseBlocBuilder(
      bloc: getIt<OrdersHelper>().assignedOrdersCubit,
      onSuccessWidget: (data) {
        return Container(
          height: Dimens.dp44,
          margin: const EdgeInsets.symmetric(vertical: 12),
          padding: const EdgeInsets.symmetric(horizontal: 32),
          decoration: BoxDecoration(
            color: context.colors.lightPrimary.withOpacity(0.3),
            borderRadius: Dimens.borderRadius30PX,
          ),
          child: Row(
            children: [
              Text(
                Translate.of(context).assigned_orders,
                style: AppTextStyle.s18_w300(
                    color: context.colors.primary),
              ),
              Gaps.hGap4,
              Text(
                "${data.length}",
                style: AppTextStyle.s18_w800(
                    color: context.colors.primary),
              )
            ],
          ),
        );
      }
    );
  }
}
