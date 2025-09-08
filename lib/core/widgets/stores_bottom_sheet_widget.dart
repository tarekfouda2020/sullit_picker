import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/shimmers/base_shimmer_widget.dart';
import 'package:flutter_tdd/core/widgets/stores_item_widget.dart';
import 'package:flutter_tdd/features/orders/data/models/store_model/store_model.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'bottom_sheet_header_widget.dart';

class StoresBottomSheetWidget extends StatelessWidget {
  final PagingController<int, StoreModel> pagingController;
  final void Function(StoreModel? store) callBack;
  const StoresBottomSheetWidget({super.key, required this.callBack, required this.pagingController});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll20Px,
      margin: const EdgeInsets.only(top: kToolbarHeight+20),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.sheetBorderRadius
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const BottomSheetHeaderWidget(title: "Stores"),
          Gaps.vGap20,
          Expanded(
            child: PagedListView<int, StoreModel>(
              pagingController: pagingController,
              builderDelegate: PagedChildBuilderDelegate<StoreModel>(
                itemBuilder: (context, stores, index) => StoresItemWidget(
                    data: pagingController.itemList!,
                    index: index,
                    onRefresh: (StoreModel? item) {
                      pagingController.itemList = pagingController.itemList;
                      callBack.call(item);
                    }
                ),
                firstPageProgressIndicatorBuilder: (context) {
                  return SingleChildScrollView(
                    child: Column(
                      children: List.generate(4, (index) {
                        return BaseShimmerWidget(
                            child: Container(
                              width: 200,
                              decoration: const BoxDecoration(
                                borderRadius: Dimens.borderRadius30PX
                              ),
                            )
                        );
                      },),
                    ),
                  );
                },
                newPageProgressIndicatorBuilder: (context) => Center(
                  child: SizedBox(
                    width: Dimens.dp30,
                    height: Dimens.dp30,
                    child: CircularProgressIndicator.adaptive(
                      backgroundColor: context.colors.primary,
                    ),
                  ),
                ),
                firstPageErrorIndicatorBuilder: (context) => Gaps.empty,
                newPageErrorIndicatorBuilder: (context) => Gaps.empty,
                noItemsFoundIndicatorBuilder: (context) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("No stores found",
                      style: AppTextStyle.s20_w500(color: context.colors.black),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
