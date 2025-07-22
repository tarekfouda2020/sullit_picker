import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/helpers/loading_helper.dart';
import 'package:flutter_tdd/core/helpers/user_services_helper.dart';
import 'package:flutter_tdd/features/home/domain/repositories/home_repositories.dart';

import 'subscription_imports.dart';

class SubscriptionController {
  late final PayMethodsRequester payRequester;
  final PlanRequester planRequester = PlanRequester();

  final ObsValue<bool> acceptTerms = ObsValue<bool>.withInit(false);
  final ObsValue<bool> isSubscribed = ObsValue<bool>.withInit(false);

  late final bool fromAuth;

  SubscriptionController(bool isFromAuth){
    fromAuth = isFromAuth;
    onInit();
  }

  Future<void> onInit()async{
    getData();
    getPayMethods();
  }

  Future<void> getData()  async{
    planRequester.setLoadingState();
    planRequester.request(fromRemote: false);
    planRequester.request();
  }

  void getPayMethods()  {
    payRequester = PayMethodsRequester(getWalletPayMethod: false);
    payRequester.request(fromRemote: false);
    payRequester.request();
  }


  void onPressBack( BuildContext context) {
    if(fromAuth){
      AutoRouter.of(context).push( const LoginRegisterRoute());
    }else{
      AutoRouter.of(context).maybePop();
    }
  }


  void toggleTermsAcceptance() {
    acceptTerms.setValue(!acceptTerms.getValue());
  }

  void paySubscription(BuildContext context) async {
    if (!acceptTerms.getValue()) {
      AppSnackBar.showWarningSnackBar(message: Translate.of(context).please_accept_terms);
      return;
    }
    showPaymentSheet(context);
  }

  void showPaymentSheet(BuildContext context) {
    AppBottomSheets.showScrollableBody(
        context: context,
        builder: (context) {
          return SubscriptionPaySheetWidget(
            requester: payRequester,
            onPressProcess: () => payForSubscription(context),
          );
        });
  }




  Future<void> payForSubscription(BuildContext context) async {
    Navigator.pop(context);
    getIt<LoadingHelper>().showLoadingDialog();
    var params = _paymentParams();
    final result = await getIt<SubscriptionRepositories>().payForSubscription(params);
    result.when(
      isSuccess: (data) {
        AppSnackBar.showSuccessSnackBar(Translate.s.payment_successful);
       getUserData();
      },
      isError: (error) {
        getIt<LoadingHelper>().dismissDialog();
        AppSnackBar.showErrorSnackBar(error: BaseError.unknown(msg: Translate.s.payment_failed_please_try_again));
      },
    );
  }


  Future<void> getUserData()async{
    BuildContext context = getIt<GlobalContext>().context();
    var result = await getIt<HomeRepositories>().getProfile();
    result.when(
      isSuccess: (data) async{
         await getIt<UserServicesHelper>().updateUserData(context, data);
        handleRoute(context);
      },
      isError: (error) {},
    );
    getIt<LoadingHelper>().dismissDialog();
  }

  void handleRoute(BuildContext context) {
    if(fromAuth){
      AutoRouter.of(context).pushAndPopUntil(
        const HomePageRoute(),
        predicate: (route) => route.settings.name != HomePageRoute.name,
      );
    }else{
      AutoRouter.of(context).maybePop(true);
    }
  }


  PlanPaymentParams _paymentParams() {
    var selectedMethod = payRequester.data!.firstWhere((e) => e.isSelected!);
    return PlanPaymentParams(paymentMethod: selectedMethod.paymentType);
  }






}
