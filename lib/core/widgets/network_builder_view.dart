import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/res.dart';
import 'package:internet_connectivity_checker/internet_connectivity_checker.dart';
import 'package:tf_custom_widgets/widgets/MyText.dart';

class NetworkBuilderView extends StatelessWidget {
  final Widget child;

  const NetworkBuilderView({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return internetConnectivityBuilder(
      (ConnectivityStatus status) {
        if (status == ConnectivityStatus.offine) {
          return Scaffold(
            backgroundColor: context.colors.white,
            body: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    Res.offline,
                    width: 250,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: MyText(
                      title: "No Internet Connected",
                      color: context.colors.primary,
                      size: 20,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 45,
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: context.colors.primary),
                          borderRadius: BorderRadius.circular(20)),
                      alignment: Alignment.center,
                      child: MyText(
                        title: "Try Again",
                        color: context.colors.primary,
                        size: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return child;
        }
      },
    );
  }
}
