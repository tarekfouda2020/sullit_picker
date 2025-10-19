
import 'dart:developer';

import 'package:hive/hive.dart';

import 'package:hive_flutter/hive_flutter.dart';

class HiveHelper {

  HiveHelper._();

  static final HiveHelper instance = HiveHelper._();

  static bool _initialized = false;


   // Future<void> init(List<TypeAdapter> adapters) async {
   Future<void> init(TypeAdapter adapter) async {
    if (_initialized) return;
    await Hive.initFlutter();
    try{
      Hive.registerAdapter(adapter);
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
    _initialized = true;
    log('Hive initialized with $adapter adapter');
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
        /// make a new box with th same name....but it will be empty
        log('Failed to open box $boxName,.....');
        await Hive.deleteBoxFromDisk(boxName);
        log('clearing corrupted box... $boxName,....');
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

   Future<void> clearHive(Box box) async {
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

}


class HiveBoxesNames{

  static const String orderProducts = "products";

  static const String orders = "orders";

}
