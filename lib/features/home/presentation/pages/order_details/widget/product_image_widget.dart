
import '../../../../../../core/helpers/export.dart';

class ProductImageWidget extends StatefulWidget  {
  final String imageUrl;
  const ProductImageWidget({super.key, required this.imageUrl});

  @override
  State<ProductImageWidget> createState() => _ProductImageWidgetState();
}

class _ProductImageWidgetState extends State<ProductImageWidget> with AutomaticKeepAliveClientMixin{

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return CachedImage(
      height: 52,
      width: 52,
      url: widget.imageUrl,
      haveRadius: false,
      boxShape: BoxShape.circle,
    );
  }

  @override
  bool get wantKeepAlive => true;
}
