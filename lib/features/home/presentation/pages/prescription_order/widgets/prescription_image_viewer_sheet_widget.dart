import 'package:flutter_tdd/core/helpers/export.dart';

class PrescriptionImageViewerSheetWidget extends StatelessWidget {
  final String title;
  final List<String> urls;

  const PrescriptionImageViewerSheetWidget({
    super.key,
    required this.title,
    required this.urls,
  });

  @override
  Widget build(BuildContext context) {
    final ObsValue<int> currentPageObs = ObsValue.withInit(0);

    return Container(
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.sheetBorderRadius,
      ),
      padding: Dimens.paddingAll16Px,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyle.s16_w600(color: context.colors.black),
          ),
          Gaps.vGap16,
          ClipRRect(
            borderRadius: Dimens.borderRadius12PX,
            child: AspectRatio(
              aspectRatio: 4 / 3,
              child: PageView.builder(
                itemCount: urls.length,
                onPageChanged: (i) => currentPageObs.setValue(i),
                itemBuilder: (_, index) => CachedImage(
                  url: urls[index],
                  fit: BoxFit.cover,
                  haveRadius: false,
                ),
              ),
            ),
          ),
          if (urls.length > 1) ...[
            Gaps.vGap12,
            ObsValueConsumer<int>(
              observable: currentPageObs,
              builder: (context, current) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(urls.length, (i) {
                  final bool active = i == current;
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    width: active ? 16 : 6,
                    height: 6,
                    decoration: BoxDecoration(
                      color: active
                          ? context.colors.primary
                          : context.colors.primary.withValues(alpha: 0.3),
                      borderRadius: Dimens.borderRadius30PX,
                    ),
                  );
                }),
              ),
            ),
          ],
          Gaps.vGap10,
        ],
      ),
    );
  }
}
