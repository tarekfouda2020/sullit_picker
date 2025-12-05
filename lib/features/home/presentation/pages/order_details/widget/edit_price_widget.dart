
import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';

import '../../../../../../core/helpers/export.dart';

class EditPriceWidget extends StatelessWidget {
  final OrderDetailsController controller;
  final OrderDetailsModel model;
  const EditPriceWidget({super.key, required this.controller, required this.model});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.showNewPriceDialog(context,model,popTwice: false),
      child: Row(
        children: [
          Text(Translate.of(context).edit,
            style: const AppTextStyle.s16_w500(color: CupertinoColors.systemBlue),
          ),
          Gaps.hGap4,
          const Icon(CupertinoIcons.pen,color: CupertinoColors.systemBlue,size: 20,)
        ],
      ),
    );
  }
}
