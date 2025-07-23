import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/home/data/model/lang_model/lang_model.dart';
import 'package:flutter_tdd/features/home/domain/repositories/home_repositories.dart';

class LanguagesRequester extends Requester<List<LangModel>> {
  @override
  Future<void> request({bool fromRemote = true}) async {
    var result = await getIt<HomeRepositories>().getLanguages(fromRemote);
    result.when(isSuccess: (data) {
      successState(data ?? []);
    }, isError: (error) {
      failedState(error, () {});
    });
  }


  void refresh(){
    successState(data!);
  }

}
