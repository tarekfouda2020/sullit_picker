import 'package:flutter_tdd/core/helpers/export.dart';
import 'package:flutter_tdd/features/orders/domain/model/pharmacy_only_info_domain_model.dart';

class PrescriptionInsuranceCompanySheetWidget extends StatelessWidget {
  final InsuranceCompanyModel company;

  const PrescriptionInsuranceCompanySheetWidget({
    super.key,
    required this.company,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.sheetBorderRadius,
      ),
      padding: Dimens.paddingAll16Px,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Translate.s.insurance_company,
            style: AppTextStyle.s16_w600(color: context.colors.black),
          ),
          Gaps.vGap16,
          Container(
            padding: Dimens.paddingAll16Px,
            decoration: BoxDecoration(
              color: context.colors.background,
              borderRadius: Dimens.borderRadius12PX,
              border: Border.all(color: context.colors.borderLight),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: Dimens.borderRadius8PX,
                  child: CachedImage(
                    url: company.logo,
                    width: 56,
                    height: 56,
                    fit: BoxFit.contain,
                    bgColor: context.colors.white,
                  ),
                ),
                Gaps.hGap12,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        company.name,
                        style: AppTextStyle.s14_w600(color: context.colors.black),
                      ),
                      Gaps.vGap4,
                      Text(
                        company.code,
                        style: AppTextStyle.s12_w400(color: context.colors.simiGray),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Gaps.vGap10,
        ],
      ),
    );
  }
}
