
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/customer_name_type_widget.dart';

import '../../../../core/helpers/export.dart';
import 'customer_phone_widget.dart';

class CustomerDateWidget extends StatelessWidget {
  final CustomerModel customer;
  const CustomerDateWidget({super.key, required this.customer});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 15,
      children: [
       Container(
         padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 16),
         decoration: BoxDecoration(
           color: context.colors.white,
           borderRadius: Dimens.borderRadius8PX,
           border: Border.all(color: context.colors.borderLight)
         ),
         child: CustomerNameTypeWidget(customer: customer),
       ),
        Container(
          padding: Dimens.paddingAll10Px,
          decoration: BoxDecoration(
              color: context.colors.white,
              borderRadius: Dimens.borderRadius8PX,
              border: Border.all(color: context.colors.borderLight)
          ),
          child: CustomerPhoneWidget(customer: customer),
        )
      ],
    );
  }
}
