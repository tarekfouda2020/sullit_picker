import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/features/home/data/model/search_barcode_model/search_barcode_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/prescription_order/prescription_order_imports.dart';
import 'package:flutter_tdd/features/home/presentation/pages/prescription_order/widgets/prescription_search_result_item_widget.dart';
import 'package:flutter_tdd/features/home/presentation/pages/prescription_order/widgets/prescription_search_shimmer_widget.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class PrescriptionSearchProductSheetWidget extends StatelessWidget {
  final PrescriptionOrderController controller;

  const PrescriptionSearchProductSheetWidget({
    super.key,
    required this.controller,
  });

  double _keyboardHeight(BuildContext context) =>
      MediaQuery.viewInsetsOf(context).bottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.88 - _keyboardHeight(context),
      margin: const EdgeInsets.only(top: kToolbarHeight),
      decoration: BoxDecoration(
        color: context.colors.background,
        borderRadius: Dimens.sheetBorderRadius,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 12),
            decoration: BoxDecoration(
              color: context.colors.white,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: context.colors.borderLight,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                Gaps.vGap12,
                Text(
                  Translate.s.search_products,
                  style: AppTextStyle.s16_w600(color: context.colors.black),
                ),
                Gaps.vGap12,
                GenericTextField(
                  controller: controller.productSearchController,
                  fieldTypes: FieldTypes.normal,
                  autoFocus: true,
                  hint: Translate.s.search_hint,
                  type: TextInputType.text,
                  action: TextInputAction.search,
                  prefixIcon: Icon(
                    CupertinoIcons.search,
                    size: 18,
                    color: context.colors.simiGray,
                  ),
                  validate: (_) => null,
                  onChange: controller.onProductSearchChanged,
                ),
              ],
            ),
          ),
          Expanded(
            child: RefreshIndicator.adaptive(
              backgroundColor: Platform.isAndroid
                  ?context.colors.white
                  :Colors.transparent,
              onRefresh: () async => controller.loadSearchProducts(1),
              child: PagedListView<int, SearchBarcodeModel>(
                pagingController: controller.searchPagingController,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                builderDelegate: PagedChildBuilderDelegate<SearchBarcodeModel>(
                  itemBuilder: (context, item, index) =>
                      PrescriptionSearchResultItemWidget(
                    item: item,
                    onTap: () => controller.onSelectSearchProduct(context, item),
                  ),
                  firstPageProgressIndicatorBuilder: (_) =>
                      const PrescriptionSearchShimmerWidget(),
                  newPageProgressIndicatorBuilder: (_) =>  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: CircularProgressIndicator.adaptive(
                        backgroundColor: context.colors.primary,
                      ),
                    ),
                  ),
                  noItemsFoundIndicatorBuilder: (_) => Center(
                    child: Padding(
                      padding: const EdgeInsets.all(32),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            CupertinoIcons.search,
                            size: 48,
                            color: context.colors.simiGray,
                          ),
                          Gaps.vGap12,
                          Text(
                            Translate.s.no_search_results,
                            style: AppTextStyle.s14_w400(
                                color: context.colors.simiGray),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
