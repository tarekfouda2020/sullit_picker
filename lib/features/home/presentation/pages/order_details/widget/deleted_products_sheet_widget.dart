
import 'package:flutter_tdd/core/widgets/bottom_sheet_header_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/deleted_item_widget.dart';

import '../../../../../../core/helpers/export.dart';

class DeletedProductsSheetWidget extends StatelessWidget {
  final OrderDetailsController controller;
  const DeletedProductsSheetWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.sheetBorderRadius
      ),
      child: ObsValueConsumer(
        observable: controller.refreshDeletedSheetObs,
        builder: (context,value) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 20,
            children: [
              BottomSheetHeaderWidget(title: Translate.s.deleted_products),
              ...List.generate(controller.detailsCubit.data!.deletedOrders!.length ,
                    (index) {
                return DeletedItemWidget(item: controller.detailsCubit.data!.deletedOrders![index],controller: controller,);
              },)
            ],
          );
        }
      ),
    );
  }
}
