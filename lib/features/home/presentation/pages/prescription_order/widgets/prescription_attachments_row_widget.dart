import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc_builder.dart';
import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/features/home/data/model/prescription_order_details/pharmacy_order_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/prescription_order/widgets/prescription_attachments_shimmer_widget.dart';

class PrescriptionAttachmentsRowWidget extends StatelessWidget {
  final BaseBloc<PharmacyOrderModel> orderCubit;
  final VoidCallback onTap;
  final int Function(PharmacyOrderModel) getCount;

  const PrescriptionAttachmentsRowWidget({
    super.key,
    required this.orderCubit,
    required this.onTap,
    required this.getCount,
  });

  @override
  Widget build(BuildContext context) {
    return BaseBlocBuilder<PharmacyOrderModel>(
      bloc: orderCubit,
      onLoadingWidget: (_) => const PrescriptionAttachmentsShimmerWidget(),
      onSuccessWidget: (order) => _buildButton(context, order),
    );
  }

  Widget _buildButton(BuildContext context, PharmacyOrderModel order) {
    final int count = getCount(order);
    if (count == 0) return const SizedBox.shrink();

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            decoration: BoxDecoration(
              color: context.colors.primary.withValues(alpha: 0.08),
              borderRadius: Dimens.borderRadius20PX,
              border: Border.all(color: context.colors.primary.withValues(alpha: 0.3)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.attach_file_rounded, size: 16, color: context.colors.primary),
                Gaps.hGap6,
                Text(
                  '${Translate.s.attachments} · $count',
                  style: AppTextStyle.s13_w500(color: context.colors.primary),
                ),
                Gaps.hGap4,
                Icon(Icons.keyboard_arrow_down_rounded, size: 16, color: context.colors.primary),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
