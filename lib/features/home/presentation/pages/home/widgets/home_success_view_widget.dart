
import 'package:flutter_tdd/features/home/presentation/pages/home/home_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/have_orders_view_widget.dart';

import '../../../../../../core/helpers/export.dart';
import '../../../../data/model/orders_model/orders_model.dart';
import 'no_orders_view_widget.dart';

class HomeSuccessViewWidget extends StatelessWidget {
  final HomeController controller;
  final OrdersList? data;
  const HomeSuccessViewWidget({super.key, required this.controller, this.data});

  @override
  Widget build(BuildContext context) {
    if(data==null){
      return NoOrdersViewWidget(controller: controller,);
    }else{
      return HaveOrdersViewWidget(controller: controller, data: data!);
    }
  }
}
