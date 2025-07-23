import 'contact_us_imports.dart';
import 'widgets/social_contact_us_widget.dart';

@RoutePage(name: "ContactUsPageRoute")
class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  final ContactUsController controller = ContactUsController();

  @override
  void initState() {
    super.initState();
    controller.getSocials();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: context.colors.background,
        appBar: DefaultAppBar(title: Translate.of(context).contact_us),
        body: SingleChildScrollView(
          padding: Dimens.paddingH20Px,
          child: Column(
            children: [
              Gaps.vGap20,
              ContactUsFormWidget(controller: controller),
              Gaps.vGap28,
              AppTextButton.maxPrimary(
                text: Translate.of(context).send,
                onPressed: () => controller.sendContactUs(context),
              ),
              Gaps.vGap64,
              SocialContactUsWidget(controller: controller),
            ],
          ),
        ),
      ),
    );
  }
}
