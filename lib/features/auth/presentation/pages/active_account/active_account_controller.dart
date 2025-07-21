part of 'active_account_imports.dart';

class ActiveAccountController {

  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final TextEditingController pinController = TextEditingController();

  String? code;
  final BaseBloc<bool> codeCubit = BaseBloc(false);

  void onComplete(String value){
    codeCubit.successState(value.length==4);
    code = value;
  }

  void onPress(BuildContext context) {
    AutoRouter.of(context).maybePop(pinController.text);
  }

}