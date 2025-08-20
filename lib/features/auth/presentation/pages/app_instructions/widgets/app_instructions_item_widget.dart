part of 'widgets_imports.dart';

class AppInstructionsItemWidget extends StatelessWidget {
  final AppInstructionsController controller;
  const AppInstructionsItemWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return RequesterConsumer(
      requester: controller.freelancerInstructionsRequester,
      successBuilder: (context, data, isLoading) {
        return Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  data.content,
                  style: AppTextStyle.s16_w400(color: context.colors.black).copyWith(height: 1.5),
                )
              ],
            ),
          ),
        );
      },
      loadingBuilder: (context) {
        return Column(
          children: List.generate(20, (index) =>  const TextShimmer(lineWidthPercent: 1.85,)),
        );
      },
      failureBuilder: (context, error, callback) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Res.logo,
                height: 100.r,
                width: 200.r,
              ),
            ],
          ),
        );
      },
    );
  }
}
