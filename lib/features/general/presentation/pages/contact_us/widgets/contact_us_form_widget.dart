
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/change_password/change_password_imports.dart';
import 'package:flutter_tdd/features/auth/presentation/widgets/auth_section_title_widget.dart';
import 'package:flutter_tdd/features/general/presentation/pages/contact_us/contact_us_controller.dart';


class ContactUsFormWidget extends StatelessWidget {
  final ContactUsController controller;
  const ContactUsFormWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AuthSectionTitleWidget(title: Translate.of(context).label_full_name),
        GenericTextField(
          controller: controller.nameController,
          fieldTypes: FieldTypes.normal,
          type: TextInputType.name,
          action: TextInputAction.next,
          fillColor: context.colors.white,
          enableBorderColor: context.colors.inputBorder,
          hint: Translate.of(context).your_name,
          margin: const EdgeInsets.only(bottom: 12),
          validate: (value) => value?.validateEmpty(),
        ),
        AuthSectionTitleWidget(title: Translate.of(context).label_email),
        GenericTextField(
          controller: controller.emailController,
          fieldTypes: FieldTypes.normal,
          type: TextInputType.emailAddress,
          action: TextInputAction.next,
          fillColor: context.colors.white,
          enableBorderColor: context.colors.inputBorder,
          hint: Translate.of(context).email_placeholder,
          margin: const EdgeInsets.only(bottom: 12),
          validate: (value) => value?.validateEmail(),
        ),
        AuthSectionTitleWidget(title: Translate.s.phone_number),
        GenericTextField(
          controller: controller.phoneController,
          validate: (value) => value?.validateOnCode(controller.countryCodeObs.getValue().dialCode),
          fieldTypes: FieldTypes.normal,
          type: TextInputType.number,
          action: TextInputAction.next,
          hint: Translate.of(context).phone_placeholder,
          fillColor: context.colors.white,
          enableBorderColor: context.colors.inputBorder,
          prefixIcon: prefixIcon(),
          margin: const EdgeInsets.only(bottom: 12),
        ),
        AuthSectionTitleWidget(title: Translate.of(context).enter_title),
        GenericTextField(
          controller: controller.titleController,
          fieldTypes: FieldTypes.normal,
          type: TextInputType.text,
          action: TextInputAction.next,
          fillColor: context.colors.white,
          hint: Translate.of(context).enter_title,
          enableBorderColor: context.colors.inputBorder,
          validate: (value) => value?.validateEmpty(),
          margin: const EdgeInsets.only(bottom: 12),
        ),
        AuthSectionTitleWidget(title: Translate.of(context).enter_your_message),
        GenericTextField(
          controller: controller.messageController,
          fieldTypes: FieldTypes.rich,
          type: TextInputType.text,
          action: TextInputAction.done,
          fillColor: context.colors.white,
          enableBorderColor: context.colors.inputBorder,
          hint: Translate.of(context).enter_your_message,
          margin: EdgeInsets.zero,
          validate: (value) => value?.validateEmpty(),
        ),
      ],
    ));
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
