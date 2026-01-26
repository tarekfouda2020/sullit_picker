

import '../../../../core/helpers/export.dart';
import '../../data/model/orders_model/orders_model.dart';
import 'custom_info_widget.dart';
import 'customer_type_widget.dart';

class CustomerNameTypeWidget extends StatelessWidget {
  final CustomerModel customer;
  const CustomerNameTypeWidget({super.key, required this.customer});

  @override
  Widget build(BuildContext context) {
    return CustomInfoWidget(
      title: "",
      crossAxisAlignment: customer.hasShareHolderNumber
          ?CrossAxisAlignment.start
          :null,
      image: Res.personIcon,
      titleWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(customer.name,
            style: AppTextStyle.s14_w500(color: context.colors.black),
          ),
          if(customer.hasShareHolderNumber)
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text("ID:${customer.shareHolderNumber}",
              style: AppTextStyle.s14_w400(color: context.colors.textColor),
            ),
          ),
        ],
      ),
      endWidget:  CustomerTypeWidget(customerType: customer.getCustomerType),
    );
  }
}
