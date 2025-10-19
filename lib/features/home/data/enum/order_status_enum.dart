import 'package:flutter_tdd/features/auth/presentation/pages/change_password/change_password_imports.dart';

enum OrderStatusEnum {
  // modified,
  // replaced,
  // canReplaced;
  //
  // Object get getValue {
  //   switch (this) {
  //     case modified:
  //       return const Text('Modified');
  //     case replaced:
  //       return const Text('Replaced');
  //     case canReplaced:
  //       return const Icon(
  //         Icons.repeat_outlined,
  //         color: Color(0xFFC6161D),
  //         size: 22,
  //       );
  //   }
  // }
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
