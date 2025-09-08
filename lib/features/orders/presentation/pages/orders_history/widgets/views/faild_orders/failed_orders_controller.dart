
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheet_views/app_bottom_sheets.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:flutter_tdd/core/helpers/date_time_helper.dart';
import 'package:flutter_tdd/core/widgets/range_date_picker_sheet_widget.dart';
import 'package:flutter_tdd/features/orders/data/data_source/orders_data_source.dart';
import 'package:flutter_tdd/features/orders/data/models/order_model/order_model.dart';
import 'package:flutter_tdd/features/orders/domain/entity/generic_pagin_params.dart';
import 'package:flutter_tdd/features/orders/domain/entity/order_history_params.dart';
import 'package:get_it/get_it.dart';

class FailedOrdersController {
  final PagingController<int, OrderModel> pagingController = PagingController(firstPageKey: 1);
  final DateRangePickerController dateRangeController = DateRangePickerController();
  final ObsValue<int> differenceInDaysObs = ObsValue<int>.withInit(0);
  
  /// Have value when save the date
  PickerDateRange? selectedRangeDates;
  bool hasDateAppliedBefore = false;

  PickerDateRange initDateRange() => PickerDateRange(
    DateTime.now().subtract(const Duration(days: 1)),
    DateTime.now(),
  );

  FailedOrdersController(BuildContext context) {
    _setupPagination(context);
  }

  void _setupPagination(BuildContext context) {
    getFailedOrders(1, refresh: false);
    getFailedOrders(1, refresh: true);
    pagingController.addPageRequestListener((pageKey) {
      getFailedOrders(pageKey);
    });
  }

  void setDifferenceInDays() {
    if (selectedRangeDates != null) {
      var startDate = selectedRangeDates!.startDate!;
      var endDate = selectedRangeDates!.endDate!;
      var difference = endDate.difference(startDate).inDays;
      differenceInDaysObs.setValue(difference);
    } else {
      differenceInDaysObs.setValue(0);
    }
  }

  void saveDateRanges(BuildContext context) {
    selectedRangeDates = dateRangeController.selectedRange;
    setDifferenceInDays();
    refreshOrders();
    hasDateAppliedBefore = true;
  }

  void cancelDateRanges(BuildContext context) {
    Navigator.of(context).pop();
  }

  void resetDateRanges(BuildContext context) {
    selectedRangeDates = null;
    dateRangeController.selectedRange = initDateRange();
    setDifferenceInDays();
    if(hasDateAppliedBefore){
      refreshOrders();
    }
    hasDateAppliedBefore = false;
  }

  void refreshOrders() {
    pagingController.refresh();
  }

  Future<void> getFailedOrders(int currentPage, {bool refresh = true}) async {
    var params = _params(currentPage, refresh);
    final result = await getIt<OrdersDataSource>().getFailedOrders(params);
    final isLastPage = (result.data ?? <OrderModel>[]).length < ApplicationConstants.paginationLimit;
    
    if (currentPage == 1) {
      pagingController.itemList = [];
    }
    
    if (isLastPage) {
      pagingController.appendLastPage(result.data ?? []);
    } else {
      final nextPageKey = currentPage + 1;
      pagingController.appendPage(result.data ?? [], nextPageKey);
    }
  }

  OrderHistoryParams _params(int currentPage, bool refresh) {
    String? fromDate;
    String? toDate;
    if (selectedRangeDates != null) {
      fromDate = DateTimeHelper.formatDate(
        date: selectedRangeDates!.startDate!, 
        formatType: "yyyy-MM-dd"
      );
      toDate = DateTimeHelper.formatDate(
        date: selectedRangeDates!.endDate!, 
        formatType: "yyyy-MM-dd"
      );
    }
    
    return OrderHistoryParams(
      paginateParams: _paginateParams(refresh, currentPage),
      fromDate: fromDate,
      toDate: toDate,
    );
  }

  GenericPaginateParams _paginateParams(bool refresh, int currentPage) {
    return GenericPaginateParams(
      pageSize: ApplicationConstants.paginationLimit,
      refresh: refresh,
      currentPage: currentPage,
    );
  }

  void showDateRangePicker(BuildContext context) {
    AppBottomSheets.showScrollableBody(
      context: context,
      builder: (context) {
      return RangeDatePickerSheetWidget(
        title: "Select Date Range",
        initialSelectedRange: selectedRangeDates ?? initDateRange(),
        maxDate: DateTime.now(),
        onSave: () => saveDateRanges(context),
        onReset: () => resetDateRanges(context),
        onClose: () => cancelDateRanges(context),
        onSelectionChanged: (PickerDateRange? selectedRange) {
          selectedRangeDates = selectedRange;
          dateRangeController.selectedRange = selectedRange;
        },
        saveButtonText: "Apply Filter",
        resetButtonText: "Reset Date",
      );
    });
  }

  void dispose() {
    pagingController.dispose();
    dateRangeController.dispose();
  }
}