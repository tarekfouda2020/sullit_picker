import 'subscription_widgets_imports.dart';

class AgreeTermsConditions extends StatelessWidget {
  final SubscriptionController controller;
  const AgreeTermsConditions({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ObsValueConsumer(
            observable:controller.acceptTerms,
            builder: (context, value) {
              return GestureDetector(
                onTap: () => controller.toggleTermsAcceptance(),
                child: Container(
                  width: 20, height: 20,
                  padding: const EdgeInsetsDirectional.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: value
                          ?context.colors.primary
                          :context.colors.gray58
                    ),
                    color: value
                        ?context.colors.primary
                        :Colors.transparent
                  ),
                  child: Visibility(
                      visible: value,
                      child: SvgPicture.asset(Res.checkIcon,
                      colorFilter: ColorFilter.mode(context.colors.white,  BlendMode.srcIn),
                      )
                  ),
                ),
              );
            },
        ),
        Gaps.hGap6,
        Text(Translate.of(context).agree,
        style: AppTextStyle.s14_w400(color: context.colors.gray58),
        ),
        GestureDetector(
          onTap: ()=>AutoRouter.of(context).push(const TermsConditionsPageRoute()),
          child: Text(Translate.of(context).terms_conditions,
            style: AppTextStyle.s14_w400(color: context.colors.black),
          ),
        ),
      ],
    );
  }
}
