import 'orders_history_widgets_imports.dart';

class OrderHistoryCardWidget extends StatelessWidget {
  final OrderModel order;
  final bool isFailed;
  
  const OrderHistoryCardWidget({
    super.key, 
    required this.order,
    required this.isFailed,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsetsDirectional.fromSTEB(19, 16, 24, 16),
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius12PX,
        border: Border.all(color: context.colors.borderLight, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '#${order.code}',
            style: AppTextStyle.s16_w700(color: context.colors.primary),
          ),
          Gaps.vGap5,
          Row(
            children: [
              Text(
                '${Translate.of(context).receiving_from} ',
                style: AppTextStyle.s14_w400(color: context.colors.textSecondary),
              ),
              Expanded(
                child: Text(
                  order.recivingFrom,
                  style: AppTextStyle.s14_w700(color: context.colors.textPrimary),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Gaps.vGap7,
          Row(
            children: [
              Expanded(
                child: Text(
                  '${Translate.of(context).total} : ${order.orderAmount}',
                  style: AppTextStyle.s16_w700(color: context.colors.primary),
                ),
              ),
              Text(
                order.paymentMethodLabel,
                style: AppTextStyle.s14_w500(color: context.colors.textPrimary),
              ),
            ],
          ),
          Gaps.vGap12,
          OrderHistoryInfoWidget(
            label: Translate.of(context).acceptance_time,
            value: _formatDateTime(order.assignedAt),
          ),
          Gaps.vGap4,
          if (!isFailed && order.deliveredAt.isNotEmpty)
            OrderHistoryInfoWidget(
              label: Translate.of(context).delivered_time,
              value: _formatDateTime(order.deliveredAt),
            ),
          if (isFailed && order.reportReason.isNotEmpty)
            OrderHistoryInfoWidget(
              label: Translate.of(context).failed_reason,
              value: order.reportReason,
            ),
          Gaps.vGap4,
          OrderHistoryInfoWidget(
            label: 'Status',
            value: order.statusLabel,
          ),
          Gaps.vGap4,
          OrderHistoryInfoWidget(
            label: 'Customer',
            value: order.customerName,
          ),
        ],
      ),
    );
  }


  String _formatDateTime(String dateTimeString) {
    if (dateTimeString.isEmpty) return 'N/A';
    try {
      final dateTime = DateTime.parse(dateTimeString);
      return DateTimeHelper.formatDate(
        date: dateTime,
        formatType: 'dd MMM yyyy - hh:mm a',
      );
    } catch (e) {
      return dateTimeString;
    }
  }
}
