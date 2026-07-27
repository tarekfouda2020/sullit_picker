part of 'pdf_view_imports.dart';

class PdfViewController {
  final String url;

  final BaseBloc<String> pdfPathCubit = BaseBloc<String>(null);
  final BaseBloc<bool> savingCubit = BaseBloc<bool>(false);
  final BaseBloc<bool> sharingCubit = BaseBloc<bool>(false);

  PdfViewController({required this.url}) {
    savingCubit.successState(true);
    sharingCubit.successState(true);
    _downloadPdf();
  }

  Future<void> _downloadPdf() async {
    pdfPathCubit.loadingState();
    final file = await PdfActionService.instance.downloadToTemp(url);
    if (file != null) {
      pdfPathCubit.successState(file.path);
    } else {
      pdfPathCubit.failedState(BaseError.unknown(), _downloadPdf);
    }
  }

  Future<void> savePdf() async {
    savingCubit.loadingState();
    final success = await PdfActionService.instance.savePdf(url);
    savingCubit.successState(success);
    if (success) {
      AppSnackBar.showSuccessSnackBar(Translate.s.pdf_saved_successfully);
    } else {
      AppSnackBar.showSimpleToast(
        msg: Translate.s.failed_to_save_pdf,
        type: ToastType.error,
      );
    }
  }

  Future<void> sharePdf() async {
    sharingCubit.loadingState();
    await PdfActionService.instance.sharePdf(url);
    sharingCubit.successState(true);
  }

  Future<void> dispose() async {
    final path = pdfPathCubit.data;
    if (path != null) {
      final file = File(path);
      if (await file.exists()) await file.delete();
    }
  }
}
