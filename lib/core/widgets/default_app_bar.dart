
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/res.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final List<Widget> actions;
  final double? size;
  final bool? showBack;
  final bool? centerTitle;

  const DefaultAppBar({
    super.key,
    required this.title,
    this.actions = const [],
    this.leading,
    this.size,
    this.showBack = true,
    this.centerTitle,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: AppTextStyle.s18_w500(color: context.colors.black),
      ),
      centerTitle: centerTitle??true,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light
      ),
      backgroundColor: context.colors.appBarColor,
      elevation: 0,
      leadingWidth: showBack == true ? 55 : 10,
      leading: leading ??
          Visibility(
            visible: showBack ?? true,
            child: IconButton(
              icon: SvgPicture.asset(Res.arrow),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(size ?? 65);
}
