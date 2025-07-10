import 'package:flutter_tdd/features/auth/presentation/pages/change_password/change_password_imports.dart';
import 'package:flutter_tdd/features/general/presentation/pages/contact_us/contact_us_controller.dart';
import 'package:flutter_tdd/features/general/presentation/pages/contact_us/widgets/contact_us_form_widget.dart';

@RoutePage(name: "ContactUsPageRoute")
class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {

  final ContactUsController controller = ContactUsController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: const DefaultAppBar(title: "Contact Us"),
      body:  SingleChildScrollView(
        padding: Dimens.paddingH20Px,
        child: Column(
          children: [
            ContactUsFormWidget(controller: controller),
            Gaps.vGap28,
            AppTextButton.maxPrimary(text: "Send"),
            Gaps.vGap64,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 15,
              children: [
              SvgPicture.asset(Res.whatsappIcon,width: 42, height: 42,),
              SvgPicture.asset(Res.twitterIcon,width: 42, height: 42,),
              Image.asset(Res.instagramIcon,width: 42, height: 42,),
                SvgPicture.asset(Res.tikTokIcon,width: 42, height: 42,),
              ],
            )

          ],
        ),
      ),
    );
  }
}