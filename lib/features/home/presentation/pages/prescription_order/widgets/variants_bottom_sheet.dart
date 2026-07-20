import 'package:flutter/material.dart';
import 'package:flutter_tdd/features/home/data/model/search_barcode_model/search_barcode_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/prescription_order/widgets/variant_option_tile.dart';

import '../../../../../../core/helpers/export.dart';

class VariantsBottomSheetWidget extends StatelessWidget {
  final SearchBarcodeModel data;
  final ObsValue<List<VariantModel>> variantsObs;
  final void Function(int index) onToggle;
  final void Function(List<VariantModel> selected) onConfirm;

  const VariantsBottomSheetWidget({
    super.key,
    required this.data,
    required this.variantsObs,
    required this.onToggle,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.sheetBorderRadius,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data.name,
            style: AppTextStyle.s18_w600(color: context.colors.black),
          ),
          Gaps.vGap16,
          ObsValueConsumer<List<VariantModel>>(
            observable: variantsObs,
            builder: (context, variants) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: variants.length,
                    separatorBuilder: (_, __) => Gaps.vGap10,
                    itemBuilder: (context, index) => VariantOptionTile(
                      variant: variants[index],
                      onTap: () => onToggle(index),
                    ),
                  ),
                ),
                if (_isAnySelected(variants)) ...[
                  Gaps.vGap16,
                  AppTextButton.maxPrimary(
                    text: Translate.s.confirm,
                    onPressed: () => onConfirm(
                      variants.where((v) => v.isSelected == true).toList(),
                    ),
                  ),
                ],
                Gaps.vGap10,
              ],
            ),
          ),
        ],
      ),
    );
  }

  bool _isAnySelected(List<VariantModel> variants) => variants.any((v) => v.isSelected == true);
}
