import 'package:intl/intl.dart' as international;

import '../helpers/utilities.dart';
import 'package:flutter_tdd/core/helpers/di.dart';

extension StringExtension on String? {
  /// Return true only if
  ///
  /// value is not empty && value is not null
  bool get isNotBlank => this?.isNotEmpty == true;

  bool get isBlank => this == null || (this ?? '').isEmpty;

  bool get isRTL => international.Bidi.detectRtlDirectionality(this!);

  String get parseCurrency {
    return getIt<Utilities>().parseCurrency(this ?? "");
  }

  String get rawPrice {
    return getIt<Utilities>().getPrice(this ?? "");
  }

}

