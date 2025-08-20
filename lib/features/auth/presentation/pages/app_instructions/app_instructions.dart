part of'app_instructions_imports.dart';
@RoutePage(name: 'AppInstructionsRoute')
class AppInstructions extends StatefulWidget {
  const AppInstructions({super.key});

  @override
  State<AppInstructions> createState() => _AppInstructionsState();
}

class _AppInstructionsState extends State<AppInstructions> {
  final AppInstructionsController controller = AppInstructionsController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: context.colors.background,
      appBar: const DefaultAppBar(
        title: "App instructions",
        size: 40,
        bgColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Gaps.vGap20,
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppSloganWidget(),
              ],
            ),
            Gaps.vGap37,
            AppInstructionsItemWidget(controller: controller,),
            Gaps.vGap40,
            AppInstructionsConditionWidget(controller: controller),
            Gaps.vGap40,
            AppTextButton.maxPrimary(
              text: Translate.of(context).send,
              onPressed: ()=> controller.onPress(context),
            ),
          ],
        ),
      ),
    );
  }
}
