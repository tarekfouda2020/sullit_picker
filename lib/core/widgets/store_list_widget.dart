import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/stores_item_widget.dart';
import 'package:flutter_tdd/features/general/presentation/pages/supported_area/supported_area_imports.dart';
import 'package:flutter_tdd/features/orders/data/models/store_model/store_model.dart';

import 'bottom_sheet_header_widget.dart';

class StoreListWidget extends StatelessWidget {
 final void Function(StoreModel? item)? onRefresh;
  const StoreListWidget({super.key, this.onRefresh});


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
        children: [
          const BottomSheetHeaderWidget(title: "Stores"),
          Gaps.vGap20,
          BlocBuilder<UserCubit, UserState>(
            builder: (context, state) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  return StoresItemWidget(
                      data: state.model!.stores!,
                      onRefresh: (StoreModel? item) {
                        context.read<UserCubit>().onUpdateUserData(state.model);
                        onRefresh?.call(item);
                      },
                      index: index
                  );
                },);
            },
          ),
        ],
      ),
    );
  }
}
