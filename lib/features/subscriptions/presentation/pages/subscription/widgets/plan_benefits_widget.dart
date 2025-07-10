import 'subscription_widgets_imports.dart';


class PlanBenefitsWidget extends StatelessWidget {
  const PlanBenefitsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 19),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius12PX,
        border: Border.all(color: context.colors.borderLight)
      ),
      child: Column(
        children: [
          Text("Benefits&Policy :",
          style: AppTextStyle.s12_w600(color: context.colors.black),
          ),
          Gaps.vGap8,
          ...List.generate(3, (index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Row(
              children: [
             Container(
               width: 2, height: 2,
               decoration:  BoxDecoration(
                 shape: BoxShape.circle,
                 color: context.colors.gray58
               ),
             ),
                Gaps.hGap8,
                Text("Lorem Ipsum is simply dummy text of the printing ",
                style: AppTextStyle.s12_w400(color: context.colors.gray58),
                )
            ],),
          );
        },)
        ],
      ),
    );
  }
}
