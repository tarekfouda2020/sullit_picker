part of '../pdf_view_imports.dart';

class PdfViewShareButtonWidget extends StatelessWidget {
  final PdfViewController controller;

  const PdfViewShareButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BaseBlocBuilder<bool>(
      bloc: controller.sharingCubit,
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
        icon: const Icon(Icons.share_rounded, color: Colors.white),
        tooltip: Translate.s.share_pdf,
        onPressed: () => controller.sharePdf(),
      ),
    );
  }
}
