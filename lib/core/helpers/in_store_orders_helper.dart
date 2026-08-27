import 'dart:convert';
import 'dart:developer';

import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/hive_helper.dart';
import 'package:flutter_tdd/core/helpers/loading_helper.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/home/data/model/search_barcode_model/search_barcode_model.dart';
import 'package:flutter_tdd/features/home/domain/entity/replaced_product_params.dart';
import 'package:flutter_tdd/features/home/domain/repositories/home_repositories.dart';
import 'package:flutter_tdd/features/orders/domain/models/in_store_order_session.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class InStoreOrdersHelper {
  bool _isDisposed = false;

  Future<MyResult<SearchBarcodeModel>> searchByBarcode(String barcode) async {
    getIt<LoadingHelper>().showLoadingDialog();
    final result = await getIt<HomeRepositories>().searchByBarcode(
      ReplacedProductParams(barcode: barcode, refresh: true),
    );
    getIt<LoadingHelper>().dismissDialog();
    return result;
  }

  Future<void> saveSession(InStoreOrderSession session) async {
    if (_isDisposed) return;
    await HiveHelper.instance.addDataToBox<String, String>(
      HiveBoxesNames.inStoreOrder,
      jsonEncode(session.toJson()),
      key: HiveBoxesKeys.inStoreOrderSession,
    );
  }

  InStoreOrderSession? getSession() {
    if (_isDisposed) return null;
    final String? jsonString =
        HiveHelper.instance.getDataFromBox<String, String>(
      HiveBoxesNames.inStoreOrder,
      key: HiveBoxesKeys.inStoreOrderSession,
    );
    if (jsonString == null || jsonString.isEmpty) return null;
    try {
      return InStoreOrderSession.fromJson(
        jsonDecode(jsonString) as Map<String, dynamic>,
      );
    } catch (e) {
      log('Failed to parse in-store session: $e');
      return null;
    }
  }

  bool get hasSession => getSession() != null;

  Future<void> deleteSession() async {
    if (_isDisposed) return;
    await HiveHelper.instance.deleteDataFromBox<String, String>(
      HiveBoxesNames.inStoreOrder,
      key: HiveBoxesKeys.inStoreOrderSession,
    );
  }

  Future<void> cleanup() async {
    _isDisposed = true;
  }

  Future<void> reset() async {
    _isDisposed = false;
    try {
      if (!Hive.isBoxOpen(HiveBoxesNames.inStoreOrder)) {
        await HiveHelper.instance.openBox<String>(HiveBoxesNames.inStoreOrder);
      }
    } catch (e) {
      log('Failed to open in-store Hive box during reset: $e');
    }
  }
}
