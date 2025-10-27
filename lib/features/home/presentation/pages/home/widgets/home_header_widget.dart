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
                        "${Translate.of(context).welcome} ${userData?.name ?? ""}",
                        style: AppTextStyle.s14_w400(color: context.colors.black),
                      ),
                      Gaps.vGap4,
                      ObsValueConsumer(
                          observable: controller.availableForOrdersObs,
                          builder: (context, value) {
                            return Row(
                              children: [
                                Text(
                                  '#${userData?.id ?? ""}',
                                  style: AppTextStyle.s14_w700(color: context.colors.primary),
                                ),
                                Gaps.hGap13,
                                Row(
                                  children: [
                                    Container(
                                      height: 12,
                                      width: 12,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: value ? context.colors.green : context.colors.primary,
                                      ),
                                    ),
                                    Gaps.hGap6,
                                    Text(
                                      value ? Translate.of(context).available : Translate.of(context).unavailable,
                                      style: AppTextStyle.s12_w400(
                                        color: value ? context.colors.green : context.colors.primary,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ),
          NotificationIconWidget(
            endPadding: 2,
            onTap: () => controller.navigateToNotifications(context),
          ),
        ],
      ),
    );
  }

  Widget _imageWidget(BuildContext context) {
    var avatar = context.select<UserCubit, String?>((value) => value.state.model?.avatar);
    return GestureDetector(
      onTap: () => controller.navigateToSideMenu(context),
      child: Visibility(
        visible: avatar == null || avatar == "",
        replacement: CachedImage(
          url: avatar ?? "",
          width: Dimens.dp40,
          height: Dimens.dp40,
          haveRadius: false,
          boxShape: BoxShape.circle,
          fit: BoxFit.cover,
        ),
        child: Container(
          width: Dimens.dp40,
          height: Dimens.dp40,
          padding: const EdgeInsets.only(bottom: 2),
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            color: context.colors.white,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            Res.personIcon,
            width: 30,
            height: 30,
          ),
        ),
      ),
    );
  }
}
