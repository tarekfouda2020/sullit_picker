import '../../../../core/helpers/export.dart';
import 'package:flutter_tdd/features/orders/data/model/order_model/order_model.dart';
import 'custom_info_widget.dart';
import 'custom_phone_icon_widget.dart';

class CustomerPhoneWidget extends StatelessWidget {
  final CustomerModel customer;
  const CustomerPhoneWidget({super.key, required this.customer});

  @override
  Widget build(BuildContext context) {
    return CustomInfoWidget(
      title: customer.customerPhone,
      image: Res.redPhone,
      iconPadding: const EdgeInsets.all(5),
      endWidget: CustomPhoneIconWidget(phone: customer.customerPhone),
    );
  }
}
