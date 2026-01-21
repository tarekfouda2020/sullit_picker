import 'package:barcode/barcode.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

import '../../features/auth/presentation/pages/login_view/login_view_imports.dart';

@lazySingleton
class BarcodeService {
  final Barcode code128 = Barcode.code128();

  String generateBarcode(String data,{bool showText = false}){
    final String svg = code128.toSvg(
      data,
      width: 300,
      height: 100,
      drawText: showText,
    );
    return svg;
  }


  Future<String?> scanBarcode(BuildContext context) async {
    try {
      final result = await SimpleBarcodeScanner.scanBarcode(
        context,
        barcodeAppBar:  const BarcodeAppBar(
          appBarTitle: 'Scan',
          centerTitle: false,
          enableBackButton: true,
          backButtonIcon: Icon(Icons.arrow_back_ios),
        ),
        isShowFlashIcon: true,
        delayMillis: 500,
        cameraFace: CameraFace.back,
        scanFormat: ScanFormat.ONLY_BARCODE,
      );
      final String? barcode = result;
      if (barcode?.isEmpty == true || barcode == null) {
        return null;
      }
      return barcode;
    } catch (e) {
      AppSnackBar.showSimpleToast(
        msg: "Scan Canceled",
        type: ToastType.error,
      );
      return null;
    }
  }


} 