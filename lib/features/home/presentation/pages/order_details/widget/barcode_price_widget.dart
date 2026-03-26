
import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';
import 'package:flutter_tdd/core/widgets/dirham_currency_symbol.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';

import '../../../../../../core/helpers/export.dart';

class BarcodePriceWidget extends StatelessWidget {
  final OrderDetailsModel data;
  const BarcodePriceWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(Translate.s.barcode,style: AppTextStyle.s14_w400(color: context.colors.black),),
        Expanded(child: Text(data.product!.barcode,style: AppTextStyle.s14_w500(color: context.colors.primary))),
        Gaps.hGap10,
        Text(data.remainQntPrice.toStringAsFixed(2).formatAmount(),
            style: AppTextStyle.s18_w800(color: context.colors.primary)
        ).withDirhamSymbol(
            symbolStyle: AppTextStyle.s20_w400(
                color: context.colors.primary
            )
        ),
      ],
    );
  }
}
