
import 'home_widgets_imports.dart';

class HomeHeaderWidget extends StatelessWidget {
  final HomeController controller;
  const HomeHeaderWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 0, right: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gaps.hGap16,
          Expanded(
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => controller.navigateToSideMenu(context),
                  child: Container(
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.only(bottom: 2),
                    alignment: Alignment.bottomCenter,
                    decoration:  BoxDecoration(
                      color: context.colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                        Res.personIcon,
                      width: 30, height: 30,
                    )
                    ,
                  ),
                ),
                Gaps.hGap12,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${Translate.s.welcome} tarek",
                        style:  AppTextStyle.s14_w400(color: context.colors.black),
                      ),
                      Gaps.vGap4,
                      Row(
                        children: [
                           Text(
                            '#5647843',
                            style: AppTextStyle.s14_w700(color: context.colors.primary),
                          ),
                          Gaps.hGap13,
                         const Visibility(
                           visible: true,
                             replacement: DriverStatusWidget(isActive: false),
                             child: DriverStatusWidget(isActive: true)
                         )
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
} 