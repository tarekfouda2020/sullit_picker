part of 'payment_imports.dart';
@RoutePage(name: 'PaymentRoute')
class Payment extends StatefulWidget {
  final String transactionUrl;
  const Payment({super.key, required this.transactionUrl});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
   final PaymentController  controller = PaymentController();

   @override
  void initState() {
    super.initState();
    controller.initWebView(widget.transactionUrl,context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: 'Payment',),
      body: WebViewWidget(controller: controller.webViewController),
      // body: Gaps.empty,
    );
  }
}
