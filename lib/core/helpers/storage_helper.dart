import 'package:shared_preferences/shared_preferences.dart';



class StorageHelper{

  StorageHelper._();

  static StorageHelper get instance => StorageHelper._();

  void clearSavedData()async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.clear();
  }

}