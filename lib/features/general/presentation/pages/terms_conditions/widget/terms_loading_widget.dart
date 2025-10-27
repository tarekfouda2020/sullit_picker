import 'widget_imports.dart';
class TermsLoadingWidget extends StatelessWidget {
  const TermsLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(20, (index) => const TextShimmer(lineWidthPercent: 1.6,)),
    );
  }
}
