import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/general/data/models/social_contact_us_model/social_contact_us_model.dart';
import 'package:flutter_tdd/features/general/domain/repositories/general_repositories.dart';
import 'package:flutter_tdd/core/helpers/di.dart';

class SocialsRequester extends Requester<List<SocialContactUsModel>> {
  @override
  Future<void> request({bool fromRemote = true}) async {
    if (hasNoData) {
      loadingState();
    }
    var result = await getIt<GeneralRepositories>().getSocials(fromRemote);
    result.when(
      isSuccess: (data) {
        successState(data!);
      },
      isError: (error) {
        failedState(error, () => request(fromRemote: fromRemote));
      },
    );
  }
} 