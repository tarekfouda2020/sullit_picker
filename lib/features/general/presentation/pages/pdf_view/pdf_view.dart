part of 'pdf_view_imports.dart';

@RoutePage(name: "PdfViewRoute")
class PdfViewPage extends StatefulWidget {
  final String url;

  const PdfViewPage({Key? key, required this.url}) : super(key: key);

  @override
  State<PdfViewPage> createState() => _PdfViewPageState();
}

class _PdfViewPageState extends State<PdfViewPage> {
  late final PdfViewController controller;

  @override
  void initState() {
    super.initState();
    controller = PdfViewController(url: widget.url);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: DefaultAppBar(
        title: '',
        bgColor: Colors.black,
        backColor: context.colors.white,
        actions: [
          PdfViewSaveButtonWidget(controller: controller),
          PdfViewShareButtonWidget(controller: controller),
        ],
      ),
      body: BaseBlocBuilder<String>(
        bloc: controller.pdfPathCubit,
        onLoadingWidget: (_) => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
        onFailedWidget: (_, __, ___) => const Center(
          child: Icon(
            Icons.error_outline,
            color: Colors.white54,
            size: 48,
          ),
        ),
        onSuccessWidget: (path) => PDFView(
          filePath: path,
          enableSwipe: true,
          swipeHorizontal: false,
          autoSpacing: true,
          pageFling: true,
          fitPolicy: FitPolicy.BOTH,
        ),
      ),
    );
  }
}
