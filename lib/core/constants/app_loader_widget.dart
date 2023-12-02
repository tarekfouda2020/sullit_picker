import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_tdd/res.dart';

enum AppLoaderSize {
  small(25),
  medium(80),
  large(128);

  final double value;

  const AppLoaderSize(this.value);
}

class AppLoaderWidget extends StatefulWidget {
  /// default is small for footer
  final AppLoaderSize size;
  final Color? color;

  const AppLoaderWidget.mediumProgress({super.key, this.color})
      : size = AppLoaderSize.medium;

  const AppLoaderWidget.smallProgress({super.key, this.color})
      : size = AppLoaderSize.small;

  const AppLoaderWidget.largeLogo({super.key, this.color})
      :size = AppLoaderSize.large;

  @override
  State<AppLoaderWidget> createState() => _AppLoaderWidgetState();
}

class _AppLoaderWidgetState extends State<AppLoaderWidget> with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(milliseconds: 800))..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget animationBuilder = AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Transform.rotate(
          angle: -_controller.value * 2 * math.pi,
          child: child,
        );
      },
      child: Image.asset(
        Res.logo ,
        height: widget.size.value,
        width: widget.size.value,
        fit: BoxFit.fill,
        color: widget.color,
      ),
    );
    return animationBuilder;
  }
}
