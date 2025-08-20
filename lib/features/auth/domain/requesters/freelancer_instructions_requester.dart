
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/auth/data/models/instructions_model/instructions_model.dart';
import 'package:flutter_tdd/features/auth/domain/repositories/auth_repositories.dart';

import '../../../../core/helpers/di.dart';

class FreelancerInstructionsRequester extends Requester<InstructionsModel> {
  @override
  Future<void> request({bool fromRemote = true})async {

    var result = await getIt<AuthRepositories>().getInstructions();

    result.when(
      isSuccess: (data) {
        successState(data!);
      },
      isError: (error) {

      },);
  }

}