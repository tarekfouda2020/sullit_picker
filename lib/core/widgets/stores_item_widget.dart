import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/widgets/report_bottom_sheet_widget.dart';
import 'package:flutter_tdd/features/orders/data/models/store_model/store_model.dart';

class StoresItemWidget extends StatelessWidget {
  final List<StoreModel> data;
  final int index;
  final void Function(StoreModel? item) onRefresh;
  const StoresItemWidget({super.key, required this.data, required this.onRefresh, required this.index});

  @override
  Widget build(BuildContext context) {
    return CustomReportBottomSheetItemWidget(
        title: data[index].name,
        isSelected: data[index].isSelected!,
        onTap: () {
          onSelectItem(data, data[index]);
          onRefresh.call(_selectedItem(data));
        });
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
    onRefresh.call(_selectedItem(data));
  }

  StoreModel? _selectedItem(List<StoreModel> data){
    return data.firstWhereOrNull((element) => element.isSelected!);
  }


}
