part of'widgets_imports.dart';
class AppInstructionsConditionWidget extends StatelessWidget {
  final AppInstructionsController controller;
  const AppInstructionsConditionWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ObsValueConsumer(
          observable:controller.checkboxObs,
          builder: (context, value) {
            return GestureDetector(
              onTap: () => controller.checkboxObs.setValue(!value),
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
        Gaps.hGap11,
        Text('Agree app instructions',
          style: AppTextStyle.s16_w500(color: context.colors.black),
        ),
      ],
    );
  }
}
