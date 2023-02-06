part of 'active_account_imports.dart';

class ActiveAccountController {

  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  String? code;
  final GenericBloc<bool> codeCubit = GenericBloc(false);

  void onComplete(String value){
    codeCubit.onUpdateData(value.length==6);
    code = value;
  }

}