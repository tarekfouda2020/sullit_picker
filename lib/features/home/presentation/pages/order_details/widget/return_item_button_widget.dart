import 'package:flutter_tdd/features/orders/data/model/order_model/order_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_imports.dart';

import '../../../../../../core/helpers/export.dart';

class ReturnItemButtonWidget extends StatelessWidget {
  final void Function() onPress;
  const ReturnItemButtonWidget({super.key,required this.onPress});

  @override
  Widget build(BuildContext context) {
    return AppTextButton.maxCustom(
      text:  Translate.s.return_key,
      bgColor:  context.colors.white,
      borderColor: context.colors.primary,
      txtColor:  context.colors.primary,
      textSize: 16,
      maxHeight: 40,
      onPressed: onPress,
    );
  }
}
