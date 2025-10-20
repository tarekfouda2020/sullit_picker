
import 'dart:developer';

import 'package:hive_flutter/hive_flutter.dart';

class HiveHelper {

  HiveHelper._();

  static final HiveHelper instance = HiveHelper._();

  static bool _initialized = false;


  Future<void> init()async{
    if (_initialized) return;
    await Hive.initFlutter();
    _initialized = true;
  }

   Future<void> registerData<T>(TypeAdapter<T> adapter) async {
   // Future<void> registerData(List<TypeAdapter> adapters) async {
    try{
      Hive.registerAdapter<T>(adapter);
    }catch (e) {
      log('⚠️ Hive adapter already registered: $e');
    }
    // for (final adapter in adapters) {
    //   try {
    //     Hive.registerAdapter(adapter);
    //   } catch (e) {
    //     log('⚠️ Hive adapter already registered: $e');
    //   }
    // }
    // log('Hive initialized with $adapters adapter');
  }


   Future<Box<T>> openBox<T>(String boxName) async {
    if (!_initialized) {
      throw Exception('HiveHelper not initialized. Call HiveHelper.init() first.');
    }

    if (!Hive.isBoxOpen(boxName)) {
      try {
        return await Hive.openBox<T>(boxName);
      } catch (e) {
        /// if box not exist or get corrupted for any reason
        /// make a new box with the same name....but it will be empty
        log('⚠️ Failed to open box $boxName: $e');
        log('🔧 Clearing corrupted box... $boxName');
        await Hive.deleteBoxFromDisk(boxName);
        log('✅ Corrupted box cleared, opening fresh box...');
        return await Hive.openBox<T>(boxName);
      }
    } else {
      return Hive.box<T>(boxName);
    }
  }


   Future<void> closeBox(String boxName) async {
    if (Hive.isBoxOpen(boxName)) {
      await Hive.box(boxName).close();
    }
  }

   Future<void> closeAllBoxes() async {
    await Hive.close();
    _initialized = false;
    log('All Hive boxes closed.');
  }

   Future<void> clearHive() async {
     await Hive.deleteFromDisk();
    log('Hive Been cleared');
  }


   Future<void> deleteBox(String boxName) async {
    if (Hive.isBoxOpen(boxName)) {
      await Hive.box(boxName).close();
    }
    await Hive.deleteBoxFromDisk(boxName);
    log('Deleted box: $boxName');
  }

  Box<T> getBox<T>(String boxName){
     return Hive.box<T>(boxName);
  }

  Future<void> addDataToBox<T>(String boxName, T value,{dynamic key = 1})async{
     var box = getBox<T>(boxName);
      await box.put(key, value);
  }

  T? getDataFromBox<T>(String boxName, {dynamic key = 1}){
    var box = getBox<T>(boxName);
    return box.get(key);
  }

  Future<void> deleteDataFromBox<T>(String boxName,{dynamic key = 1})async{
    var box = getBox<T>(boxName);
    await box.delete(key,);
  }

}


class HiveBoxesNames{

  static const String orderDetails = "orderDetails";

  static const String orders = "orders";


}

class HiveBoxesKeys{
  static const int orderEndDate = 2;

  static const String assignedOrdersKey = "assigned";



}
