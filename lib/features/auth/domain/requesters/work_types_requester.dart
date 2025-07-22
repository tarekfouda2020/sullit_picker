import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/auth/data/models/work_type_model/work_type_model.dart';
import 'package:flutter_tdd/features/auth/domain/repositories/auth_repositories.dart';

class WorkTypesRequester extends Requester<List<WorkTypeModel>> {

  @override
  Future<void> request({bool fromRemote = true}) async {

    if (hasNoData) {
      loadingState();
    }

    var result = await getIt<AuthRepositories>().getWorkTypes();
    result.when(
      isSuccess: (workTypes) {
        successState(workTypes!);
      },
      isError: (error) {
        failedState(error, () => request(fromRemote: fromRemote));
      },
    );
  }

  void refresh(){
    successState(data!);
  }
} 