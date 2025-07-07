

import "package:flutter_tdd/core/theme/colors/colors_extension.dart";

import"../supported_area_imports.dart";
class MapAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const MapAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation:  0.5,
      shadowColor: context.colors.black,
      color:  context.colors.background,
      type: MaterialType.canvas,
      child: AppBar(
        title: Text(
          "Detect supported area",
          style: AppTextStyle.s18_w500(color: context.colors.black),
        ),
        centerTitle: true,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
        ),
        backgroundColor:  context.colors.background,
        elevation: 0,
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        leadingWidth:  55 ,
        leading: IconButton(
          icon: SvgPicture.asset(Res.shortArrow),
          onPressed: () => AutoRouter.of(context).maybePop(),
        )
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65);
}
