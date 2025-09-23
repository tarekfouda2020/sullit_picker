import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/user_cubit/user_cubit.dart';

import 'profile_page_widgets_imports.dart';


class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var userData = context.read<UserCubit>().state.model;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(userData?.name ?? "",
          style: AppTextStyle.s18_w700(color: context.colors.black),
        ),
        Gaps.vGap5,
        const ProfileRatingWidget(),
        Gaps.vGap8,
        Text(userData?.fullPhone ?? "",
          style: AppTextStyle.s14_w400(color: context.colors.black),
        ),
        Gaps.vGap7,
        Text(userData?.email ?? "",
            style: AppTextStyle.s14_w400(color: context.colors.black)
        ),
      ],
    );
  }
}
