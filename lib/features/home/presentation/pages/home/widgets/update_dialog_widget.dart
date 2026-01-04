import 'package:flutter/services.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';

import 'home_widgets_imports.dart';


class UpdateDialogWidget extends StatelessWidget {
  const UpdateDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result) => SystemNavigator.pop(),
      child: AlertDialog(
        backgroundColor: context.colors.white,
        content: Column(
          spacing: 15,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(Translate.s.force_update_message,
              textAlign: TextAlign.center,
              style: AppTextStyle.s15_w500(color: context.colors.black).copyWith(
                height: 1.35
              ),
            ),
            AppTextButton.maxCustom(
              text: "Update",
              onPressed: () => getIt<Utilities>().openAppInStore(),
            )
          ],
        ),
      ),
    );
  }
}
