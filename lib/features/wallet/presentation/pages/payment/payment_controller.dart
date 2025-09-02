// ignore_for_file: use_build_context_synchronously

part of 'payment_imports.dart';

class PaymentController {
  final WebViewController webViewController = WebViewController();

  // void initWebView() {
  //   controller
  //     ..setJavaScriptMode(JavaScriptMode.unrestricted)
  //     ..setNavigationDelegate(
  //       NavigationDelegate(
  //         onProgress: (int progress) {
  //           // Update loading bar.
  //         },
  //         onPageStarted: (String url) {},
  //         onPageFinished: (String url) {
  //
  //         },
  //         onHttpError: (HttpResponseError error) {},
  //         onWebResourceError: (WebResourceError error) {},
  //         onNavigationRequest: (NavigationRequest request) {
  //          return NavigationDecision.navigate;
  //         },
  //       ),
  //     )
  //     ..loadRequest(Uri.parse('https://flutter.dev'));
  // }




void initWebView(String url,BuildContext context) {

  // late final PlatformWebViewControllerCreationParams params;
  // if (WebViewPlatform.instance is WebKitWebViewPlatform) {
  //   params = WebKitWebViewControllerCreationParams(
  //     allowsInlineMediaPlayback: true,
  //     mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
  //   );
  // } else {
  //   params = const PlatformWebViewControllerCreationParams();
  // }
  //
  // webViewController = WebViewController.fromPlatformCreationParams(params);

  webViewController..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setNavigationDelegate(
      NavigationDelegate(
        // onPageStarted: (url) => _handleUrlChange(url,context),
        onPageStarted: (url) {},
        onNavigationRequest: (request) {
          _handleUrlChange(request.url,context);
          return NavigationDecision.navigate;
        },
        onPageFinished: (url) => _handleUrlChange(url,context) ,
        onUrlChange: (change) => _handleUrlChange(url,context),
      ),
    )
    ..loadRequest(Uri.parse(url));
}

void _handleUrlChange(String url,BuildContext context) {
  log("<<<<<<<<<<<<<<<<<<<<<<<<<< payment url changed {{{{{$url}}}}} >>>>>>>>>>>>>>>>");
  if (url.contains("Fail")) {
    AppSnackBar.showSimpleToast(msg: "Payment Failed");
    AutoRouter.of(context).maybePop(false);
  } else if (url.contains("success")) {
    AppSnackBar.showSimpleToast(msg: "Payment Done",type: ToastType.success);
    AutoRouter.of(context).maybePop(true);
  }
}
}
