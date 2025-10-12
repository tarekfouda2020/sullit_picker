
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:flutter_tdd/res.dart';
import 'package:auto_route/auto_route.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final List<Widget> actions;
  final double? size;
  final double? leadingWidth;
  final double? elevation;
  final bool? showBack;
  final bool? centerTitle;
  final Color? bgColor;
  final Color? shadowColor;
  final bool? removeBgColorInScroll;
  final void Function()? onPressBack;

  const DefaultAppBar({
    super.key,
    required this.title,
    this.actions = const [],
    this.leading,
    this.size,
    this.showBack = true,
    this.centerTitle,
    this.bgColor,
    this.leadingWidth,
    this.onPressBack,
    this.elevation,
    this.removeBgColorInScroll,
    this.shadowColor,
  });

  @override
  Widget build(BuildContext context) {
    String lang = context.select<DeviceCubit,String>((cubit) => cubit.state.model.locale.languageCode);
    return AppBar(
      title: Text(
        title,
        style: AppTextStyle.s18_w500(color: context.colors.black),
      ),
      centerTitle: centerTitle ?? true,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light
      ),
      forceMaterialTransparency: removeBgColorInScroll ?? false,
      backgroundColor: bgColor ?? context.colors.background,
      elevation:elevation ?? 0,
      shadowColor: shadowColor,
      leadingWidth: showBack == true ? leadingWidth ?? 55 : 10,
      leading: leading ??
          Visibility(
            visible: showBack ?? true,
            child: IconButton(
              icon: Transform.rotate(
                angle: lang == ApplicationConstants.langAR ? pi : 0,
                  child: SvgPicture.asset(Res.shortArrow)),
              onPressed: onPressBack ?? () => AutoRouter.of(context).maybePop(),
            ),
          ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(size ?? 65);
}
