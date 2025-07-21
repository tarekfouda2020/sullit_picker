import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/login_register/login_register_imports.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/login_register/widgets/views/regeister/widgets/verify_text_widget.dart';

import '../register_controller.dart';


class DriverPhoneWidget extends StatelessWidget {
  final RegisterController controller;
  const DriverPhoneWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AuthSectionTitleWidget(title: Translate.s.phone_number),
        GenericTextField(
          controller: controller.phoneController,
          validate: (value) => value?.validateOnCode(controller.countryCodeObs.getValue().dialCode),
          fieldTypes: FieldTypes.normal,
          type: TextInputType.phone,
          action: TextInputAction.next,
          hint: "0000000",
          fillColor: context.colors.white,
          enableBorderColor: context.colors.inputBorder,
          hintColor: context.colors.hintText,
          prefixIcon: prefixIcon(),
          suffixIcon: VerifyTextWidget(
            title: Translate.s.verify_your_phone,
            onTap: () => controller.verifyPhone(context),
          ),
        ),
      ],
    );
  }


  Widget prefixIcon() {
   return ObsValueConsumer(
     observable: controller.countryCodeObs,
     builder: (context, value) {
       return GestureDetector(
         onTap: () async=> await controller.selectCountryCode(context),
         child: Row(
           mainAxisSize: MainAxisSize.min,
           children: [
             Gaps.hGap23,
             SizedBox(
                 height: 20, width: 20,
                 child: value.flagImage()
             ),
             Gaps.hGap5,
             Text(value.dialCode,
               style: AppTextStyle.s14_w400(color: context.colors.black),),
             Gaps.hGap5,
             Icon(Icons.keyboard_arrow_down_outlined,size: 15,color: context.colors.black,),
             Gaps.hGap5,
           ],
         ),
       );
     },);
  }



}
