import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/my_colors.dart';
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
            backgroundColor: MyColors.white,
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
                      color: MyColors.primary,
                      size: 20,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 45,
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: MyColors.primary),
                          borderRadius: BorderRadius.circular(20)),
                      alignment: Alignment.center,
                      child: MyText(
                        title: "Try Again",
                        color: MyColors.primary,
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
