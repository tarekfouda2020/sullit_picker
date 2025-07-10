import 'terms_conditions_imports.dart';


@RoutePage(name: "TermsConditionsPageRoute")
class TermsConditions extends StatefulWidget {
  const TermsConditions({super.key});

  @override
  State<TermsConditions> createState() => _TermsConditionsState();
}

class _TermsConditionsState extends State<TermsConditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Terms&Conditions",
        size: 40,
      ),
      body: ListView(
        padding:  Dimens.paddingH20Px,
        children: [
          Gaps.vGap43,
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppSloganWidget(),
            ],
          ),
          Gaps.vGap37,
          Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it.",
            style: AppTextStyle.s16_w400(color: context.colors.black).copyWith(
                height: 1.5
            ),
          )
        ],
      ),
    );
  }
}
