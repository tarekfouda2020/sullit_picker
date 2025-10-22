import 'package:flutter_tdd/features/auth/presentation/pages/change_password/change_password_imports.dart';

enum OrderStatusEnum {
  preparing,
  newOrder;

  String get getValue {
    switch (this) {
      case preparing:
        return 'Preparing';
      case newOrder:
        return 'New Order';
    }
  }


}
