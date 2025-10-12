import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/card_order_widget.dart';

import 'home_widgets_imports.dart';

class HaveOrdersViewWidget extends StatelessWidget {
  final HomeController controller;
  const HaveOrdersViewWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return  CardOrderWidget(controller: controller);
        },
        itemCount: 3,
        separatorBuilder: (BuildContext context, int index) => Gaps.vGap12,
      ),
    );
  }
}
