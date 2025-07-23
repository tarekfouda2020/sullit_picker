import 'package:flutter_tdd/core/helpers/utilities.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';

import 'contact_widgets_imports.dart';
import 'package:flutter_tdd/core/requester/consumer/requester_consumer.dart';
import 'package:flutter_tdd/features/general/data/models/social_contact_us_model/social_contact_us_model.dart';

class SocialContactUsWidget extends StatelessWidget {
  final ContactUsController controller;
  const SocialContactUsWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return RequesterConsumer<List<SocialContactUsModel>>(
      requester: controller.socialsRequester,
      successBuilder: (context, socials, isLoading) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(socials.length,
                (index) {
              return GestureDetector(
                onTap: () {
                  if(socials[index].url.isNotEmpty) {
                    getIt<Utilities>().launchURL( url:socials[index].url);
                  }else{
                    AppSnackBar.showWarningSnackBar(message: "Not available yet");
                  }
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 7),
                  child: CachedImage(
                    url: socials[index].image,
                    width: 42, height: 42,
                    boxShape: BoxShape.circle,
                    haveRadius: false,
                  ),
                ),
              );
            },),
        );
      },
      loadingBuilder: (context) => Row(
        spacing: 7,
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(4, (i) => Container(
          width: 42, height: 42,
          decoration: BoxDecoration(
            color: context.colors.white,
            shape: BoxShape.circle
          ),
        )),
      ),
      failureBuilder: (context, error, callback) => const SizedBox(),
    );
  }
}
