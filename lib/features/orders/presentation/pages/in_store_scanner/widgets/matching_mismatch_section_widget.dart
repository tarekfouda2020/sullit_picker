part of '../in_store_scanner_imports.dart';

class MatchingMismatchSectionWidget extends StatelessWidget {
  final String title;
  final List<MatchingProductItem> items;

  const MatchingMismatchSectionWidget({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) return Gaps.empty;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$title ( ${items.length} )',
          style: AppTextStyle.s16_w700(color: context.colors.black),
        ),
        Gaps.vGap12,
        ...items.map(
          (item) => Padding(
            padding: const EdgeInsets.only(bottom: Dimens.dp12),
            child: MatchingMismatchItemCardWidget(item: item),
          ),
        ),
      ],
    );
  }
}
