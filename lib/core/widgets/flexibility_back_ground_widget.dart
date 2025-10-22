import 'package:flutter/material.dart';

class FlexibilityBackGroundWidget extends StatefulWidget {
  final GlobalKey targetChildKey;
  final Widget child;
  const FlexibilityBackGroundWidget({super.key, required this.targetChildKey, required this.child});

  @override
  State<FlexibilityBackGroundWidget> createState() => _FlexibilityBackGroundWidgetState();
}

class _FlexibilityBackGroundWidgetState extends State<FlexibilityBackGroundWidget> {
  double? _calculatedHeight;
  double? _calculatedWidth;
  bool _hasError = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _updateSize();
    });
  }

  void _updateSize() {
    if (!mounted) return;
    
    try {
      final context = widget.targetChildKey.currentContext;
      if (context != null) {
        final renderBox = context.findRenderObject() as RenderBox?;
        if (renderBox != null && renderBox.hasSize) {
          final size = renderBox.size;
          if (mounted && size.width > 0 && size.height > 0) {
            setState(() {
              _calculatedHeight = size.height;
              _calculatedWidth = size.width;
              _hasError = false;
            });
          }
        }
      }
    } catch (e) {
      // Handle any size access errors gracefully
      if (mounted) {
        setState(() {
          _hasError = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // If there's an error or no size calculated, use a flexible fallback
    if (_hasError || ( _calculatedWidth == null)) {
      return LayoutBuilder(
        builder: (context, constraints) {
          return SizedBox(
            width: constraints.maxWidth.isFinite ? constraints.maxWidth : null,
            child: widget.child,
          );
        },
      );
    }
    
    return SizedBox(
      width: _calculatedWidth,
      height: _calculatedHeight,
      child: widget.child,
    );
  }
}
