import 'package:flutter_tdd/features/wallet/presentation/pages/wallet_page/widgets/transaction_header_widget.dart';
import 'package:flutter_tdd/features/wallet/presentation/pages/wallet_page/widgets/transactions_list_widget.dart';
import 'package:flutter_tdd/features/wallet/presentation/pages/wallet_page/widgets/wallet_button_widget.dart';

import 'wallet_imports.dart';

@RoutePage(name: "WalletPageRoute")
class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {

  late WalletController controller;

  @override
  void initState() {
    super.initState();
    controller = WalletController(context);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: DefaultAppBar(
        title: Translate.of(context).wallet,
        bgColor: context.colors.background,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gaps.vGap16,
            WalletFilterWidget(controller: controller),
            Gaps.vGap16,
            WalletBalanceWidget(controller: controller),
            Gaps.vGap20,
            TransactionHeaderWidget(controller: controller),
            Gaps.vGap12,
            TransactionsListWidget(controller: controller),
            WalletButtonWidget(controller: controller,),
          ],
        ),
      ),
    );
  }
}