import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/features/home/data/model/orders_model/orders_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_controller.dart';

import 'widgets_imports.dart';

class ChangeQntDialogWidget extends StatelessWidget {
  final OrderDetailsController controller;
  final OrderDetailsModel product;
  const ChangeQntDialogWidget(
      {super.key, required this.controller, required this.product});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        Translate.s.new_product_qnt,
        style: AppTextStyle.s18_w700(color: context.colors.textColor),
      ),
      content: Form(
          key: controller.newQntFormKey,
          child: Column(
            children: [
              GenericTextField(
                fieldTypes: FieldTypes.normal,
                controller: controller.newCountController,
                type: TextInputType.number,
                action: TextInputAction.done,
                margin: const EdgeInsets.only(bottom: 20),
                validate: (value) => value?.validatePrice(
                    maxPrice: double.parse(value),
                    message:
                        "${Translate.s.new_count_max_error} ${product.remainQnt}"),
              ),
              AppTextButton.maxCustom(
                text: Translate.s.confirm,
                onPressed: () {},
              )
            ],
          )),
    );
  }
}
