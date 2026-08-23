import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/home/data/model/available_for_order_model/available_for_order_model.dart';
import 'package:flutter_tdd/features/home/data/model/invoice_preview_model/invoice_preview_model.dart';
import 'package:flutter_tdd/features/home/data/model/lang_model/lang_model.dart';
import 'package:flutter_tdd/features/orders/data/model/order_model/order_model.dart';
import 'package:flutter_tdd/features/home/data/model/report_reason_model/report_reason_model.dart';
import 'package:flutter_tdd/features/home/data/model/search_barcode_model/search_barcode_model.dart';
import 'package:flutter_tdd/features/home/domain/entity/orders_params.dart';
import 'package:flutter_tdd/features/home/domain/entity/prepare_order_params.dart';
import 'package:flutter_tdd/features/home/domain/entity/replaced_product_params.dart';
import 'package:flutter_tdd/features/home/domain/entity/cancel_order_params.dart';
import 'package:flutter_tdd/features/home/data/model/accept_prescription_preview_model/accept_prescription_preview_model.dart';
import 'package:flutter_tdd/features/home/data/model/prescription_order_details/pharmacy_order_model.dart';
import 'package:flutter_tdd/features/orders/domain/params/prescription_preview_params.dart';
import 'package:flutter_tdd/features/orders/domain/params/accept_prescription_params.dart';
import 'package:flutter_tdd/features/home/domain/entity/update_profile_image_params.dart';
import 'package:flutter_tdd/features/home/domain/entity/update_device_token_params.dart';
import 'package:flutter_tdd/features/notifications/domain/entity/generic_pagin_params.dart';
import 'package:flutter_tdd/features/home/domain/entity/product_search_params.dart';

abstract class HomeDataSource {
  Future<MyResult<UserModel>> getProfile();

  Future<MyResult<UserModel>> updateProfileImage(
      UpdateProfileImageParams params);

  Future<MyResult<OrdersList?>> orders(bool params);

  Future<MyResult<OrderModel>> showOrders(OrdersParams params);

  Future<MyResult<OrderModel>> acceptOrder(OrdersParams params);

  Future<MyResult<OrderModel>> cancelOrder(CancelOrderParams params);

  Future<MyResult<SearchBarcodeModel>> searchByBarcode(
      ReplacedProductParams params);

  Future<MyResult<List<LangModel>>> getLanguages(bool params);

  Future<MyResult<AvailableForOrderModel>> updateAvailability();

  Future<MyResult<OrderModel>> prepareOrder(PrepareOrderParams params);

  Future<MyResult<InvoicePreviewModel>> updateInvoice(
      PrepareOrderParams params);

  Future<MyResult<List<OrderModel>>> getPreviousOrders(
      GenericPaginateParams params);

  Future<MyResult<String>> updateDeviceToken(UpdateDeviceTokenParams params);

  Future<MyResult<AcceptPrescriptionPreviewModel>> acceptPrescriptionPreview(
      PrescriptionPreviewParams params);

  Future<MyResult<PharmacyOrderModel>> getPharmacyOrder(int id,{bool fromRemote = true});

  Future<MyResult<String>> acceptPrescription(AcceptPrescriptionParams params);

  Future<MyResult<List<SearchBarcodeModel>>> searchProducts(
      ProductSearchParams params);
}
