import 'package:flutter_tdd/features/home/presentation/pages/home/widgets/card_order_widget.dart';

import 'home_widgets_imports.dart';

class HaveOrdersViewWidget extends StatelessWidget {
  const HaveOrdersViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return const CardOrderWidget();
        },
        itemCount: 3,
        separatorBuilder: (BuildContext context, int index) => Gaps.vGap12,
      ),
    );
  }
}
