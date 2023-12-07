import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter_tdd/core/widgets/svg_icons/app_loader_image.dart';

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
  final bool _enableLogo;
  final Color? color;

  const AppLoaderWidget.mediumProgress({super.key, this.color})
      : size = AppLoaderSize.medium,
        _enableLogo = false;

  const AppLoaderWidget.smallProgress({super.key, this.color})
      : size = AppLoaderSize.small,
        _enableLogo = false;

  const AppLoaderWidget.largeLogo({super.key, this.color})
      : _enableLogo = true,
        size = AppLoaderSize.large;

  @override
  State<AppLoaderWidget> createState() => _AppLoaderWidgetState();
}

class _AppLoaderWidgetState extends State<AppLoaderWidget> with SingleTickerProviderStateMixin {
  /// Bounce Curve
  late AnimationController _controller;


  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _controller.repeat();
    super.initState();
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget._enableLogo) {
      return Center(
        child: SizedBox(
          height: widget.size.value,
          width: widget.size.value,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(ApplicationConstants.logoPathPng,
                    color: widget.color,
                    height: widget.size.value / 2.5,
                    width: widget.size.value / 2.5),
              ),
              AnimatedBuilder(
                  animation: _controller,
                  builder: (_, child) {
                    return Transform.rotate(
                      angle: _controller.value * 2 * math.pi,
                      child: child,
                    );
                  },
                  child: AppLoaderImage(
                    size: widget.size.value,
                    color: widget.color,
                  ))
            ],
          ),
        ),
      );
    } else {
      return SizedBox.square(
        dimension: widget.size.value,
        child: CircularProgressIndicator(
          color: widget.color,
          strokeCap: StrokeCap.round,
          strokeWidth: 2.5,
        ),
      );
    }
  }
}
