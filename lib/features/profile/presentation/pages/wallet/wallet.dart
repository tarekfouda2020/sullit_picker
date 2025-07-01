import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'widgets/wallet_widgets_imports.dart';

@RoutePage()
class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => AutoRouter.of(context).pop(),
          icon: Icon(Icons.arrow_back, color: context.colors.textPrimary),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            WalletHeaderWidget(),
            WalletTransactionsWidget(),
          ],
        ),
      ),
    );
  }
}
