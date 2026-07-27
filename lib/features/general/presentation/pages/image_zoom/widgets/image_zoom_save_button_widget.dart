part of '../image_zoom_imports.dart';

class ImageZoomSaveButtonWidget extends StatelessWidget {
  final ImageZoomController controller;

  const ImageZoomSaveButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BaseBlocBuilder<bool>(
      bloc: controller.savingCubit,
      onLoadingWidget: (_) => const Padding(
        padding: EdgeInsets.all(12),
        child: SizedBox(
          width: 20,
          height: 20,
          child: CircularProgressIndicator(
            color: Colors.white,
            strokeWidth: 2,
          ),
        ),
      ),
      onSuccessWidget: (_) => IconButton(
        icon: const Icon(Icons.download_rounded, color: Colors.white),
        tooltip: Translate.s.save_image,
        onPressed: () => controller.saveToGallery(context),
      ),
    );
  }
}
