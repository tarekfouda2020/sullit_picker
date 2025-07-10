import '../notification_page_imports.dart';

class NotificationCardWidget extends StatelessWidget {
  const NotificationCardWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(start: 21,top: 16,bottom: 16),
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius12PX,
        border: Border.all(color: context.colors.inputBorder,),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                Res.sulitLogo,
                width: 52,
                height: 25,
              ),
              Gaps.hGap8,
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'New Order ',
                            style: AppTextStyle.s14_w400(color: context.colors.textPrimary),
                          ),
                          TextSpan(
                            text: "#5465746",
                            style: AppTextStyle.s14_w600(color: context.colors.textPrimary),
                          ),
                        ],
                      ),
                    ),
                    Gaps.vGap10,
                    Text(
                     "10 feb 2025 - 09:55 PM",
                      style: AppTextStyle.s12_w400(color: context.colors.gray3),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
} 