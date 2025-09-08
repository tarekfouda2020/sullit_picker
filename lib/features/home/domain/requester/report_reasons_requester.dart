import 'package:collection/collection.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/home/data/model/report_reason_model/report_reason_model.dart';
import 'package:flutter_tdd/features/home/domain/repositories/home_repositories.dart';

class ReportReasonsRequester extends Requester<List<ReportReasonModel>> {
  
  @override
  Future<void> request({bool fromRemote = true}) async {
    if (hasNoData) {
      loadingState();
    }
    
    var result = await getIt<HomeRepositories>().getReportReasons();
    result.when(
      isSuccess: (data) {
        successState(data!);
      },
      isError: (error) {
        failedState(error, () => request(fromRemote: fromRemote));
      },
    );
  }


  void refresh() {
    successState(data!);
  }

  void selectReason(ReportReasonModel model) {
   for(var item in data!){
     item.isSelected = false;
   }
   model.isSelected = true;
   successState(data!);
  }

  ReportReasonModel? get selectedReason {
  return data?.firstWhereOrNull((element) => element.isSelected!);
  }

}
