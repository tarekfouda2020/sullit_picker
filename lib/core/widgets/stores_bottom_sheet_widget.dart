import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/requester/consumer/requester_consumer.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/report_bottom_sheet_widget.dart';
import 'package:flutter_tdd/features/orders/data/models/store_model/store_model.dart';
import 'package:flutter_tdd/features/orders/domain/requester/stores_requester.dart';
import 'bottom_sheet_header_widget.dart';

class StoresBottomSheetWidget extends StatelessWidget {
  final StoresRequester requester;
  final void Function(StoreModel? store) callBack;
  const StoresBottomSheetWidget({super.key, required this.requester, required this.callBack});

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
          RequesterConsumer<List<StoreModel>>(
              requester: requester,
              successBuilder: (context, data, isLoading) {
                return Flexible(
                  child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                    var item = data[index];
                    return CustomReportBottomSheetItemWidget(
                        title: item.name,
                        isSelected: item.isSelected!,
                        onTap: (){
                          onSelectItem(data, item);
                          callBack.call(_selectedItem(data));
                        }
                    );
                  },),
                );
              },
              failureBuilder: (context, error, callback) => const SizedBox(),
              loadingBuilder: (context) => const SizedBox(),
          )
        ],
      ),
    );
  }

  void onSelectItem(List<StoreModel> data, StoreModel item){
    if(item.isSelected!){
      item.isSelected = false;
    }else{
      for(var store in data){
        store.isSelected = false;
      }
      item.isSelected = true;
    }
    requester.refresh();
  }

  StoreModel? _selectedItem(List<StoreModel> data){
    return data.firstWhereOrNull((element) => element.isSelected!);
  }

}
