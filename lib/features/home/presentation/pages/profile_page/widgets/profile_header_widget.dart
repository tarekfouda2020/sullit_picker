import 'package:flutter_tdd/features/home/presentation/pages/profile_page/profile_page_controller.dart';
import 'profile_page_widgets_imports.dart';
import 'user_image_widget.dart';
import 'user_info_widget.dart';

class ProfileHeaderWidget extends StatelessWidget {
  final ProfilePageController controller;
  const ProfileHeaderWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          clipBehavior: Clip.none,
          children: [
             UserImageWidget(controller: controller),
            PositionedDirectional(
              end: -5, bottom: -3,
              child: GestureDetector(
                onTap: ()=> controller.selectImage(context),
                child: Container(
                  width: 32,height: 32,
                  decoration: BoxDecoration(
                    color: context.colors.softRose,
                      shape: BoxShape.circle
                  ),
                  child: UnconstrainedBox(child: SvgPicture.asset(Res.pencilIcon,width: 12, height: 12,)),
                ),
              ),
            )
          ],
        ),
        Gaps.hGap11,
        const Expanded(
          child: UserInfoWidget() ,
        )
      ],
    );
  }
} 