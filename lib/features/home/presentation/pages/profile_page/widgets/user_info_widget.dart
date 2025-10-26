import 'profile_page_widgets_imports.dart';


class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var userData = context.read<UserCubit>().state.model;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gaps.vGap10,
        Text(userData?.name ?? "",
          style: AppTextStyle.s18_w700(color: context.colors.black),
        ),
        Gaps.vGap8,
        Text("@${userData?.username ?? ""}",
          style: AppTextStyle.s14_w400(color: context.colors.black),
        ),

        // const ProfileRatingWidget(),
        // Gaps.vGap8,
        // Text(userData?.fullPhone ?? "",
        //   style: AppTextStyle.s14_w400(color: context.colors.black),
        // ),
        // Gaps.vGap7,
        // Text(userData?.email ?? "",
        //     style: AppTextStyle.s14_w400(color: context.colors.black)
        // ),
      ],
    );
  }
}
