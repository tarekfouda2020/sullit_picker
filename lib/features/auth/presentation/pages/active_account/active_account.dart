part of 'active_account_imports.dart';

@RoutePage(name: "ActiveAccountPageRoute")
class ActiveAccount extends StatefulWidget {
  final String emailOrPhone;
  const ActiveAccount({super.key, required this.emailOrPhone});

  @override
  State<StatefulWidget> createState() => _ActiveAccountState();

}

class _ActiveAccountState extends State<ActiveAccount> {
  final ActiveAccountController controller = ActiveAccountController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.white,
      appBar:  DefaultAppBar(title: "",
      bgColor: Colors.transparent,
      leading: GestureDetector(
        onTap: () => AutoRouter.of(context).maybePop(),
        child: Icon(
          Icons.arrow_back_ios_new_outlined,
          color: context.colors.black,
        ),
      ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        children: [
          RichText(text: TextSpan(
            children: [
              TextSpan(text: Translate.of(context).code_sent_to + " ",
                style: AppTextStyle.s16_w400(color: context.colors.black),
              ),
              TextSpan(text:widget.emailOrPhone,
                style: AppTextStyle.s14_w500(color: context.colors.gray58),
              ),
            ]
          )),
          Gaps.vGap30,
          PinFieldWidget(
            onComplete: controller.onComplete,
            controller: controller.pinController,
          ),
          BuildActiveButton(controller: controller),
        ],
      ),
    );
  }
}
