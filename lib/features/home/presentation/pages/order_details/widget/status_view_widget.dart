import 'widgets_imports.dart';

class StatusViewWidget extends StatelessWidget {
  final String status;

  const StatusViewWidget({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 113,
      height: 33,
      decoration: BoxDecoration(
        color: context.colors.phosphorousGreen.withAlpha(35),
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(12),
        ),
      ),
      child: Text(
        status ?? '',
        style: AppTextStyle.s14_w700(color: context.colors.phosphorousGreen),
      ),
    );
  }
}
