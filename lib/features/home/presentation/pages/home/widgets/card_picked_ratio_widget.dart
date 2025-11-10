import 'home_widgets_imports.dart';

class CardPickedRatioWidget extends StatefulWidget {
  final double pickedPercentage;
  final Widget child;
  const CardPickedRatioWidget({
    super.key,
    required this.pickedPercentage,
    required this.child,
  });

  @override
  State<CardPickedRatioWidget> createState() => _CardPickedRatioWidgetState();
}

class _CardPickedRatioWidgetState extends State<CardPickedRatioWidget> {



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
      GlobalKey key =  widget.child.key as GlobalKey<State<StatefulWidget>>;
      final context = key.currentContext;
      if (context != null) {
        final renderBox = context.findRenderObject() as RenderBox?;
        if (renderBox != null && renderBox.hasSize) {
          final size = renderBox.size;
          if (mounted && size.width > 0 && size.height > 0) {
            setState(() {
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
    return  Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        widget.child,
        if (_hasError || ( _calculatedWidth == null))
          LayoutBuilder(builder: (context, constraints) {
            return  Gaps.empty;
          },)
          else
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              height: 5,
              decoration:   BoxDecoration(
                color: context.colors.gray4,
                borderRadius: const BorderRadiusDirectional.only(
                  bottomEnd: Radius.circular(30),
                  bottomStart: Radius.circular(30),
                ),
              ),
            ),
            // Filled progress bar
            Row(
              children: [
                Container(
                  width: (_calculatedWidth ?? 0) * (widget.pickedPercentage / 100)  ,
                  height: 5,
                  decoration:  BoxDecoration(
                    color:  context.colors.indicatorColor,
                    borderRadius: BorderRadiusDirectional.only(
                      bottomEnd: Radius.circular(widget.pickedPercentage == 100?30:0),
                      bottomStart: const Radius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
           // if((widget.pickedPercentage) > 0 && widget.pickedPercentage != 100 )
           //  PositionedDirectional(
           //    start: (_calculatedWidth ?? 0) * (widget.pickedPercentage / 100) - (
           //     widget.pickedPercentage==100
           //         ?13
           //         :0
           //    ) ,
           //    child: Container(
           //      width: 13,
           //      height: 13,
           //      decoration:  BoxDecoration(
           //        color: context.colors.indicatorColor,
           //        shape: BoxShape.circle,
           //      ),
           //    ),
           //  ),
          ],
        ),
      ],
    );
  }
}
