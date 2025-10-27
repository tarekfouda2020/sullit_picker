import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/features/auth/presentation/widgets/app_slogan_widget.dart';

import '../terms_conditions/widget/terms_loading_widget.dart';
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
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return Scaffold(
      appBar: DefaultAppBar(title: Translate.s.privacy_policy),
      body: Padding(
        padding: const EdgeInsets.only(top: 20,right: 20,left: 20),
        child: RequesterConsumer(
          requester: controller.privacyPolicyRequester,
          loadingBuilder: (context) => const TermsLoadingWidget(),
          successBuilder: (context, data, isLoading) {
            return SingleChildScrollView(
              child: Html(
                shrinkWrap: true, // Add this
                data: getIt<Utilities>().cleanHtml(data.content),
                onLinkTap: (url, attributes, element) => getIt<Utilities>().launchURL(url:url ?? ""),
                style: {
                  "body": Style(
                      color: context.colors.black,
                      fontSize: FontSize(16),
                      fontWeight: FontWeight.w400,
                      textAlign: lang == ApplicationConstants.langAR ? TextAlign.right : TextAlign.left,
                      margin: Margins.all(0),
                      padding: HtmlPaddings.all(0),
                      display: Display.block),
                  "p": Style(
                      margin: Margins.symmetric(vertical: 8),
                      padding: HtmlPaddings.zero,
                      fontSize: FontSize(14),
                      fontWeight: FontWeight.w400,
                      color: context.colors.black,
                      lineHeight: const LineHeight(1.4),
                      whiteSpace: WhiteSpace.normal,
                      display: Display.block),
                  "ul": Style(
                      margin: Margins.all(0),
                      padding: HtmlPaddings.zero,
                      fontSize: FontSize(14),
                      fontWeight: FontWeight.w400,
                      color: context.colors.black,
                      display: Display.block),
                  "li": Style(
                      margin: Margins.all(0),
                      fontSize: FontSize(14),
                      fontWeight: FontWeight.w400,
                      color: context.colors.black,
                      display: Display.block),
                  "b": Style(
                    fontWeight: FontWeight.bold,
                  ),
                },
              ),
            );
          },
          failureBuilder: (context, error, callback) => Center(
            child: Text(
              Translate.of(context).no_terms_yet,
              style: AppTextStyle.s24_w700(color: context.colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
