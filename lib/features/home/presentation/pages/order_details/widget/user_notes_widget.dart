import 'widgets_imports.dart';


class UserNotesWidget extends StatelessWidget {
  final String notes;
  const UserNotesWidget({super.key, required this.notes});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll16Px,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius12PX,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Notes for picker : ",
          style: AppTextStyle.s14_w500(color: context.colors.black),
          ),
          Flexible(
            child: Text(notes,
            style: AppTextStyle.s14_w500(color: context.colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
