part of '../pdf_view_imports.dart';

class PdfViewSaveButtonWidget extends StatelessWidget {
  final PdfViewController controller;

  const PdfViewSaveButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BaseBlocBuilder<bool>(
      bloc: controller.savingCubit,
      onLoadingWidget: (_) => const Padding(
        padding: EdgeInsets.all(12),
        child: SizedBox(
          width: 20,
          height: 20,
          child: CircularProgressIndicator.adaptive(
            strokeWidth: 2,
          ),
        ),
      ),
      onSuccessWidget: (_) => IconButton(
        icon: const Icon(Icons.download_rounded, color: Colors.white),
        tooltip: Translate.s.save_pdf,
        onPressed: () => controller.savePdf(),
      ),
    );
  }
}
