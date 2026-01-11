import 'package:flutter_tdd/core/helpers/export.dart';

class OrderHistoryDetailsHeaderWidget extends StatelessWidget {
  const OrderHistoryDetailsHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => AutoRouter.of(context).maybePop(),
          child: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        Expanded(
          child: Center(
            child: Text(
              Translate.s.order_details,
              style: const AppTextStyle.s20_w700(color: Colors.black),
            ),
          ),
        ),
        // Placeholder to balance the back button
        const SizedBox(width: 24),
      ],
    );
  }
}
