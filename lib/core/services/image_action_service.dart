import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:gal/gal.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class ImageActionService {
  ImageActionService._();
  static final ImageActionService instance = ImageActionService._();

  Future<ui.Image?> _capture(GlobalKey key) async {
    try {
      final boundary = key.currentContext?.findRenderObject()
          as RenderRepaintBoundary?;
      if (boundary == null) return null;
      return await boundary.toImage(pixelRatio: 3.0);
    } catch (_) {
      return null;
    }
  }

  Future<File?> _toTempFile(GlobalKey key) async {
    final image = await _capture(key);
    if (image == null) return null;
    final bytes = await image.toByteData(format: ui.ImageByteFormat.png);
    if (bytes == null) return null;
    final dir = await getTemporaryDirectory();
    final file = File('${dir.path}/share_${DateTime.now().millisecondsSinceEpoch}.png');
    await file.writeAsBytes(bytes.buffer.asUint8List());
    return file;
  }

  Future<bool> saveToGallery(GlobalKey key) async {
    try {
      final hasAccess = await Gal.hasAccess(toAlbum: true);
      if (!hasAccess) {
        final granted = await Gal.requestAccess(toAlbum: true);
        if (!granted) return false;
      }
      final file = await _toTempFile(key);
      if (file == null) return false;
      await Gal.putImage(file.path);
      return true;
    } catch (_) {
      return false;
    }
  }

  Future<void> shareImage(GlobalKey key) async {
    final file = await _toTempFile(key);
    if (file == null) return;
    await SharePlus.instance.share(
      ShareParams(files: [XFile(file.path)]),
    );
  }
}
