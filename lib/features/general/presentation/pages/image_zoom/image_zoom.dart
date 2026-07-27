part of 'image_zoom_imports.dart';

@RoutePage(name: "ImageZoomRoute")
class ImageZoom extends StatefulWidget {
  final String image;

  const ImageZoom({Key? key, required this.image}) : super(key: key);

  @override
  State<ImageZoom> createState() => _ImageZoomState();
}

class _ImageZoomState extends State<ImageZoom> {

  final ImageZoomController controller = ImageZoomController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(
            Icons.arrow_back_ios,
            size: Dimens.dp20.sp,
            color: Colors.white,
          ),
        ),
        actions: [
          ImageZoomSaveButtonWidget(controller: controller),
          ImageZoomShareButtonWidget(controller: controller),
        ],
      ),
      body: RepaintBoundary(
        key: controller.repaintKey,
        child: Container(
          color: Colors.black87,
          alignment: Alignment.center,
          child: PhotoView(
            backgroundDecoration: const BoxDecoration(color: Colors.black87),
            imageProvider: NetworkImage(widget.image),
          ),
        ),
      ),
    );
  }
}
