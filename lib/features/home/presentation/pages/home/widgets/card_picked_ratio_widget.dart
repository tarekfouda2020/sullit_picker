import 'home_widgets_imports.dart';

class CardPickedRatioWidget extends StatelessWidget {
  final Color? color;
  final String ratio;
  const CardPickedRatioWidget({super.key, required this.ratio, this.color,});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            child: Container(
          height: 40,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
        )),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
          decoration: BoxDecoration(
            color: context.colors.background,
            borderRadius: Dimens.borderRadius10PX,
          ),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                'No. of Items : 4',
                style: AppTextStyle.s16_w300(color: context.colors.black),
              )),
              Text(
                'Picked $ratio%',
                style: AppTextStyle.s14_w400(color: context.colors.black),
              )
            ],
          ),
        ),
      ],
    );
  }
}
