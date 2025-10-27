import 'package:flutter_tdd/core/constants/lang_code.dart';
import 'package:flutter_tdd/features/home/presentation/pages/profile_page/profile_page_controller.dart';
import 'package:flutter_tdd/features/home/presentation/pages/profile_page/widgets/menu_item_widget.dart';

import 'profile_page_widgets_imports.dart';

class MenuItemsListWidget extends StatelessWidget {
  final ProfilePageController controller;

  const MenuItemsListWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gaps.vGap20,
        MenuItemWidget(
          icon: Res.lockIcon,
          title: Translate.of(context).change_password,
          onTap: () => controller.navigateToChangePassword(context),
        ),
        MenuItemWidget(
          icon: Res.globalIcon,
          title: Translate.of(context).language,
          onTap: () => controller.showLangSheet(context),
          endTitle: currentLang.toUpperCase(),
        ),
        MenuItemWidget(
          icon: Res.contactUs,
          title: Translate.of(context).contact_us,
          onTap: () => controller.navigateToContactUs(context),
        ),
        MenuItemWidget(
          icon: Res.termsConditions,
          title: Translate.of(context).terms_conditions,
          onTap: () => controller.navigateToTermsConditions(context),
        ),
        Gaps.vGap4,
        MenuItemWidget(
          icon: Res.privacyPolicy,
          title: Translate.of(context).privacy_policy,
          onTap: () => controller.navigateToPrivacyPolicy(context),
        ),
      ],
    );
  }

  String get currentLang {
    var langKey = GlobalState.instance.get(ApplicationConstants.langKey);
    if(langKey == LangCode.ar){
      return "AR";
    }else{
      return GlobalState.instance.get(ApplicationConstants.langKey);
    }

  }

} 