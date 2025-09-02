import 'package:flutter_tdd/features/wallet/presentation/pages/wallet_page/widgets/transaction_shimmer_item_widget.dart';

import 'wallet_widgets_imports.dart';

class TransactionsListWidget extends StatelessWidget {
  final WalletController controller;
  const TransactionsListWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RefreshIndicator.adaptive(
        onRefresh: () async => controller.getWalletHistory(1),
        backgroundColor: context.colors.white,
        child: PagedListView<int, TransactionsModel>(
          pagingController: controller.pagingController,
          builderDelegate: PagedChildBuilderDelegate<TransactionsModel>(
            itemBuilder: (context, transaction, index) => WalletTransactionCard(
              model: transaction,
            ),
            firstPageProgressIndicatorBuilder: (context) {
              return SingleChildScrollView(
                child: Column(
                  children: List.generate(4, (index) {
                    return const TransactionShimmerItemWidget();
                  },),
                ),
              );
            },
            newPageProgressIndicatorBuilder: (context) => Center(
              child: SizedBox(
                child: SizedBox(
                  width: 30, height: 30,
                  child: CircularProgressIndicator.adaptive(
                    backgroundColor: context.colors.primary,
                  ),
                ),
              ),
            ),
            firstPageErrorIndicatorBuilder: (context) => _buildErrorWidget(context),
            newPageErrorIndicatorBuilder: (context) => _buildErrorWidget(context),
            noItemsFoundIndicatorBuilder: (context) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(Translate.s.no_transactions_found,
                style: AppTextStyle.s20_w500(color: context.colors.black),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildErrorWidget(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            Translate.of(context).something_went_wrong,
            style: AppTextStyle.s16_w500(color: context.colors.textPrimary),
            textAlign: TextAlign.center,
          ),
          Gaps.vGap16,
          AppTextButton.minPrimary(
            text: Translate.of(context).tryAgain,
            onPressed: () => controller.refreshTransactions(),
          ),
        ],
      ),
    );
  }
}
