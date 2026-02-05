import 'package:flutter/cupertino.dart';

import '../../../../../../core/helpers/export.dart';
import '../../../../data/model/orders_model/orders_model.dart';
import '../order_details_controller.dart';

class QntCountWidget extends StatelessWidget {
  final int qnt;
  final OrderDetailsController controller;
  final OrderDetailsModel data;
  final BaseBloc<bool> loadingCubit;

  const QntCountWidget({
    super.key,
    required this.qnt,
    required this.controller,
    required this.data,
    required this.loadingCubit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        color: context.colors.lightPrimary.withOpacity(0.3),
        borderRadius: Dimens.borderRadius30PX,
      ),
      child: Row(
        spacing: 5,
        children: [
          if (enableAdd())
            InkWell(
              onTap: () => controller.editQuantity(context, data, loadingCubit,
                  isReduce: false),
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    color: context.colors.white, shape: BoxShape.circle),
                child: Icon(
                  CupertinoIcons.plus,
                  color: context.colors.primary,
                  size: 18,
                ),
              ),
            ),
          Text(
            "$qnt",
            style: AppTextStyle.s18_w600(color: context.colors.primary),
          ),
          if (!controller.isProductFullPicked(data) &&
              data.remainQnt > 1 &&
              data.product?.productStatus?.shouldShowReduceIcon == true)
            InkWell(
              onTap: () => controller.editQuantity(context, data, loadingCubit),
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    color: context.colors.white, shape: BoxShape.circle),
                child: Icon(
                  CupertinoIcons.minus,
                  color: context.colors.primary,
                  size: 18,
                ),
              ),
            )
        ],
      ),
    );
  }

  bool enableAdd() {
    var isQntReduced = data.product?.productStatus?.isQntModified == true;
    var isFullPicked = controller.isProductFullPicked(data);
    List<int?>? addedIds = controller.detailsCubit.data?.ordersDetails
        ?.where((e) => e.oldReplacedModel != null)
        .map(
          (e) => e.oldReplacedModel?.id,
        )
        .toList();
    var isAddedBefore = addedIds?.contains(data.id);
    return isQntReduced && isAddedBefore == false && isFullPicked == false;
  }
}
