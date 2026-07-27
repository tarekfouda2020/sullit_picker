import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class PdfActionService {
  PdfActionService._();
  static final PdfActionService instance = PdfActionService._();

  final Dio _dio = Dio();

  String _filename(String url) {
    final name = url.split('/').last.split('?').first;
    return name.toLowerCase().endsWith('.pdf')
        ? name
        : 'document_${DateTime.now().millisecondsSinceEpoch}.pdf';
  }

  Future<File?> downloadToTemp(String url) async {
    try {
      final dir = await getTemporaryDirectory();
      final path = '${dir.path}/${_filename(url)}';
      final file = File(path);
      if (await file.exists()) return file;
      await _dio.download(url, path);
      return file;
    } catch (_) {
      return null;
    }
  }

  Future<bool> savePdf(String url) async {
    try {
      final file = await downloadToTemp(url);
      if (file == null) return false;
      final dir = await getApplicationDocumentsDirectory();
      final saveDir = Directory('${dir.path}/downloaded_pdfs');
      await saveDir.create(recursive: true);
      final savedPath = '${saveDir.path}/${_filename(url)}';
      await file.copy(savedPath);
      return true;
    } catch (_) {
      return false;
    }
  }

  Future<void> sharePdf(String url) async {
    final file = await downloadToTemp(url);
    if (file == null) return;
    await SharePlus.instance.share(
      ShareParams(files: [XFile(file.path)]),
    );
  }
}
