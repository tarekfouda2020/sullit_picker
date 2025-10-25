import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/features/home/presentation/pages/profile_page/profile_page_controller.dart';

import 'profile_page_widgets_imports.dart';


class UserImageWidget extends StatelessWidget {
  final ProfilePageController controller;
  const UserImageWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    var userImage = context.select<UserCubit,String>((cubit) => cubit.state.model?.avatar ?? "");
    return  GestureDetector(
      onTap: ()=> controller.selectImage(context),
      child: Visibility(
        visible: userImage == "",
        replacement: CachedImage(
          url: userImage,
          width: 63,height: 63,
          boxShape:BoxShape.circle,
          haveRadius: false,
          fit: BoxFit.cover,
        ),
        child: Container(
          width: 63,height: 63,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: context.colors.white,
              shape: BoxShape.circle
          ),
          child: UnconstrainedBox(child: SvgPicture.asset(Res.personIcon,width: 40,height: 40,)),
        ),
      ),
    );
  }
}
