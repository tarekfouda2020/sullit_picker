
import 'package:flutter_tdd/core/errors/base_error.dart';
import 'package:flutter_tdd/core/localization/translate.dart';

class DeviceIdError extends BaseError{
  DeviceIdError():super(Translate.s.device_token_error);
}