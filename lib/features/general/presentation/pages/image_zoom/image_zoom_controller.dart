part of 'image_zoom_imports.dart';

class ImageZoomController {
  final GlobalKey repaintKey = GlobalKey();
  final BaseBloc<bool> savingCubit = BaseBloc<bool>(false);
  final BaseBloc<bool> sharingCubit = BaseBloc<bool>(false);

  ImageZoomController() {
    savingCubit.successState(true);
    sharingCubit.successState(true);
  }

  Future<void> saveToGallery(BuildContext context) async {
    savingCubit.loadingState();
    final success = await ImageActionService.instance.saveToGallery(repaintKey);
    savingCubit.successState(success);
    if (success) {
      AppSnackBar.showSuccessSnackBar(Translate.s.image_saved_successfully);
    } else {
      AppSnackBar.showSimpleToast(
        msg: Translate.s.failed_to_save_image,
        type: ToastType.error,
      );
    }
  }

  Future<void> shareImage() async {
    sharingCubit.loadingState();
    await ImageActionService.instance.shareImage(repaintKey);
    sharingCubit.successState(true);
  }
}
