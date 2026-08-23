import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';
import 'package:flutter_tdd/core/widgets/dirham_currency_symbol.dart';
import 'package:flutter_tdd/features/orders/data/model/order_model/order_model.dart';
import 'package:flutter_tdd/core/helpers/export.dart';

class ScannedProductUnitPriceWidget extends StatelessWidget {
  final OrderDetailsModel data;

  const ScannedProductUnitPriceWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final double unitPrice = double.tryParse(data.unitPrice) ?? 0.0;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '${Translate.s.unit_price}/',
          style: AppTextStyle.s14_w300(color: context.colors.simiGray),
        ),
        Gaps.hGap5,
        Text(
          unitPrice.toStringAsFixed(2).formatAmount(),
          style: AppTextStyle.s14_w600(color: context.colors.black),
        ).withDirhamSymbol(symbolColor: context.colors.black),
      ],
    );
  }
}
