import 'package:flutter_tdd/features/home/presentation/pages/profile_page/profile_page_controller.dart';
import 'profile_page_widgets_imports.dart';

class DriverWorkInfo extends StatelessWidget {
  final ProfilePageController controller;

  const DriverWorkInfo({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    var userData = context.read<UserCubit>().state.model;
    return _buildContainer(context, child: Text(
      "ID : #${userData?.id ?? ""} - ${userData?.sellerName ?? ""}",
      // 'ID : #5647843 - Munch Corner',
      style: AppTextStyle.s16_w700(color: context.colors.primary),
    ));
  }
  Container _buildContainer(BuildContext context, {required Widget child}) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 42,
      padding: const EdgeInsetsDirectional.only(start: 18),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: context.colors.lightBackground,
        borderRadius: Dimens.borderRadius30PX,
      ),
      child: child,
    );
  }
}
