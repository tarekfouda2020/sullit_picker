import 'package:flutter_tdd/features/home/domain/entity/orders_params.dart';
import 'package:flutter_tdd/features/home/domain/requester/show_orders_requester.dart';
import 'package:flutter_tdd/features/home/presentation/pages/order_details/widget/dialog_action_widget.dart';

import 'order_details_imports.dart';

class OrderDetailsController {
  final ObsValue<bool> isPicked = ObsValue.withInit(false);
  late ShowOrdersRequester showOrdersRequester;

  OrderDetailsController(int id){
    showOrdersRequester = ShowOrdersRequester(id: id);
    showOrdersRequester.request(fromRemote: false);
    showOrdersRequester.request();
  }

  void showReplaceDialog(BuildContext context) {
    showDialog(context: context,builder: (context) => DialogActionWidget(
              description: 'Are you sure you want replace this product ?',
              buttonGreenTitle: 'Yes Replace',
              buttonRedTitle: 'Cancel',
              greenOnTap: () => showDialog(
                context: context,
                builder: (context) => DialogActionWidget(
                  description:
                      'User didn’t give access to replace the product , you can just remove it from order',
                  buttonGreenTitle: 'Yes Remove',
                  buttonRedTitle: 'Cancel',
                  greenOnTap: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  redOnTap: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                ),
              ),
              redOnTap: () {
                Navigator.pop(context);
              },
            ));
  }
}
