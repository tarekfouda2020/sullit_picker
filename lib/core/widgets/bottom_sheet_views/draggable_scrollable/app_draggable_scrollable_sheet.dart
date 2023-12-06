import 'package:flutter/material.dart';

class AppDraggableScrollableSheet extends StatelessWidget {
  final ScrollableWidgetBuilder builder;
  final double? childSize;

  const AppDraggableScrollableSheet({
    Key? key,
    required this.builder,
    this.childSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: childSize ?? .8,
      minChildSize: childSize ?? .5,
      maxChildSize: childSize ?? .9,
      builder: builder,
    );
  }
}
