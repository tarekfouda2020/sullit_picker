import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/requester/consumer/requester_consumer.dart';
import 'package:flutter_tdd/core/widgets/shimmers/text_shimmer.dart';
import 'package:flutter_tdd/res.dart';

import 'terms_conditions_imports.dart';

@RoutePage(name: "TermsConditionsPageRoute")
class TermsConditions extends StatefulWidget {
  const TermsConditions({super.key});

  @override
  State<TermsConditions> createState() => _TermsConditionsState();
}

class _TermsConditionsState extends State<TermsConditions> {
  late TermsConditionsController controller;

  @override
  void initState() {
    controller = TermsConditionsController();
    controller.getTerms();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(
        title: "Terms&Conditions",
        size: 40,
      ),
      body: ListView(
        padding: Dimens.paddingH20Px,
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
            requester: controller.termsRequester,
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
                children: List.generate(20, (index) =>  const TextShimmer(lineWidthPercent: 1,)),
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
