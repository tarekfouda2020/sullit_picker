
import 'package:flutter_tdd/features/home/presentation/pages/home/home_imports.dart';


class HomeHeaderWidget extends StatelessWidget {
  final HomeController controller;
  const HomeHeaderWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    var userData = context.read<UserCubit>().state.model!;
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                        "${Translate.of(context).welcome} ${userData.name}",
                        style:  AppTextStyle.s14_w400(color: context.colors.black),
                      ),
                      Gaps.vGap4,
                      Row(
                        children: [
                           Text(
                            '#${userData.id}',
                            style: AppTextStyle.s14_w700(color: context.colors.primary),
                          ),
                          Gaps.hGap13,
                         ObsValueConsumer(
                           observable: controller.availableForOrdersObs,
                           builder: (context,value) {
                             return DriverStatusWidget(isActive: value);
                           }
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