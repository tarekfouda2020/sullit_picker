


import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/requester/consumer/requester_consumer.dart';
import 'package:flutter_tdd/core/widgets/shimmers/text_shimmer.dart';

import '../../../../../res.dart';
import 'privacy_policy_imports.dart';


@RoutePage(name: "PrivacyPolicyPageRoute")
class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {

  late PrivacyPolicyController controller;

  @override
  void initState() {
    controller = PrivacyPolicyController();
    controller.getPrivacyPolicy();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Privacy Policy",
      size: 40,
      ),
      body: ListView(
        padding:  Dimens.paddingH20Px,
        children: [
          Gaps.vGap43,
           const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppSloganWidget(),
            ],
          ),
          Gaps.vGap37,
          RequesterConsumer(
            requester: controller.privacyPolicyRequester,
            successBuilder: (context, data, isLoading) {
              return Html(
                data: data.content,
                style: {
                  "body": Style(
                    fontSize: FontSize(16),
                    fontWeight: FontWeight.w400,
                    color: context.colors.black,
                  )
                },
              );
            },
            loadingBuilder: (context) {
              return Column(
                children: List.generate(20, (index) =>  const TextShimmer(lineWidthPercent: 1.85,)),
              );
            },
            failureBuilder: (context, error, callback) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      Res.logo,
                      height: 100.r,
                      width: 200.r,
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
