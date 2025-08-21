// ignore_for_file: use_build_context_synchronously

part of 'payment_imports.dart';

class PaymentController {
  // late final WebViewController webViewController;
  //
  //
  // void initWebView(String url,BuildContext context) {
  //
  //   late final PlatformWebViewControllerCreationParams params;
  //   if (WebViewPlatform.instance is WebKitWebViewPlatform) {
  //     params = WebKitWebViewControllerCreationParams(
  //       allowsInlineMediaPlayback: true,
  //       mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
  //     );
  //   } else {
  //     params = const PlatformWebViewControllerCreationParams();
  //   }
  //
  //   webViewController = WebViewController.fromPlatformCreationParams(params);
  //   webViewController..setJavaScriptMode(JavaScriptMode.unrestricted)
  //     ..setNavigationDelegate(
  //       NavigationDelegate(
  //         onPageStarted: (url) => _handleUrlChange(url,context),
  //         onNavigationRequest: (request) {
  //           _handleUrlChange(request.url,context);
  //           return NavigationDecision.navigate;
  //         },
  //       ),
  //     )
  //     ..loadRequest(Uri.parse(url));
  // }
  //
  // void _handleUrlChange(String url,BuildContext context) {
  //   if (url.contains("Fail")) {
  //     AppSnackBar.showSimpleToast(msg: "Payment Failed");
  //     context.router.maybePop();
  //   } else if (url.contains("success")) {
  //     AppSnackBar.showSimpleToast(msg: "Payment Done");
  //     context.router.maybePop(true);
  //   }
  // }
}
