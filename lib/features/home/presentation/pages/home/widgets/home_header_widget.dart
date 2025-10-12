import 'package:flutter_tdd/features/home/presentation/pages/home/home_controller.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/notification_icon.dart';

import 'home_widgets_imports.dart';
class HomeHeaderWidget extends StatelessWidget {
  final HomeController controller;
  const HomeHeaderWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    var userData = context.read<UserCubit>().state.model;
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              children: [
                _imageWidget(context),
                Gaps.hGap12,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        // "${Translate.of(context).welcome} ${userData?.name ?? ""}",
                        'Welcome Ahmed',
                        style:  AppTextStyle.s14_w400(color: context.colors.black),
                      ),
                      Gaps.vGap4,
                      Row(
                        children: [
                           Text(
                            // '#${userData?.id ?? ""}',
                             '##5647843',
                            style: AppTextStyle.s14_w700(color: context.colors.primary),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          NotificationIconWidget(
            onTap: () => controller.navigateToNotifications(context),
          ),
        ],
      ),
    );
  }

  Widget _imageWidget(BuildContext context){
    var avatar = context.select<UserCubit,String?>((value) => value.state.model?.avatar);
    return  GestureDetector(
      onTap: () => controller.navigateToSideMenu(context),
      child: Visibility(
        visible: avatar==null || avatar == "",
        replacement: CachedImage(
          url: avatar ?? "",
          width: 60,
          height: 60,
          haveRadius: false,
          boxShape: BoxShape.circle,
          fit: BoxFit.cover,
        ),
        child: Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.only(bottom: 2),
          alignment: Alignment.center,
          decoration:  BoxDecoration(
            color: context.colors.white,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            Res.personIcon,
            width: 45, height: 45,
          )
          ,
        ),
      ),
    );
  }


} 