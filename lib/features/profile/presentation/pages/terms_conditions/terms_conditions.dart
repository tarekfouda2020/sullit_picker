import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/localization/translate.dart';

@RoutePage()
class TermsConditionsPage extends StatelessWidget {
  const TermsConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.colors.primary,
        title: Text(Translate.of(context).terms_conditions, style: AppTextStyle.s18_w700(color: Colors.white)),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => AutoRouter.of(context).pop(),
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: Center(
        child: Text(Translate.of(context).terms_conditions, style: AppTextStyle.s24_w700(color: Colors.black)),
      ),
    );
  }
} 