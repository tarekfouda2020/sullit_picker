// import 'dart:developer';
//
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_tdd/core/helpers/di.dart';
// import 'package:force_update_helper/force_update_helper.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// import '../routes/router_imports.dart';
//
// class ForceUpdateLayout extends StatefulWidget {
//   final Widget child;
//   const ForceUpdateLayout({super.key, required this.child});
//
//   @override
//   State<ForceUpdateLayout> createState() => _ForceUpdateLayoutState();
// }
//
// class _ForceUpdateLayoutState extends State<ForceUpdateLayout> {
//
//   final GlobalKey<NavigatorState> _rootNavigatorKey = getIt.get<AppRouter>().navigatorKey;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return ForceUpdateWidget(
//       navigatorKey: _rootNavigatorKey,
//       forceUpdateClient: ForceUpdateClient(
//           fetchRequiredVersion: () async{
//              return "";
//           },
//           iosAppStoreId: iosAppStoreId
//       ),
//       allowCancel: false,
//       showForceUpdateAlert: (context, allowCancel) => showDialog(context: context, builder: (context) {
//         return Dialog(
//           child: Column(
//
//           ),
//         );
//       },),
//       showStoreListing: (storeUrl) async {
//         if (await canLaunchUrl(storeUrl)) {
//           await launchUrl(
//             storeUrl,
//             mode: LaunchMode.externalApplication,
//           );
//         } else {
//           log('Cannot launch URL: $storeUrl');
//         }
//       },
//       child: widget.child,
//     );
//   }
// }
