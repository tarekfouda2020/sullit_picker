import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter_tdd/core/helpers/country_picker.dart';
import 'package:flutter_tdd/features/general/domain/entity/contact_us_params.dart';
import 'package:flutter_tdd/features/general/domain/repositories/general_repositories.dart';

import 'contact_us_imports.dart';
import 'package:flutter_tdd/features/general/domain/requesters/socials_requester.dart';

class ContactUsController {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  ContactUsController(BuildContext context){
    initData(context);
  }

  final TextEditingController messageController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController titleController = TextEditingController();

  final ObsValue<CountryCode> countryCodeObs = ObsValue<CountryCode>.withInit(
      getIt<CountryPickerHelper>().defaultCountry
  );

  final SocialsRequester socialsRequester = SocialsRequester();

  Future<void> selectCountryCode(BuildContext context)async{
    CountryCode? selectedCountry = await getIt<CountryPickerHelper>().selectCountrySheet(context);
    if(selectedCountry != null){
      countryCodeObs.setValue(selectedCountry);
      countryCodeObs.refresh();
    }
  }

  void initData(BuildContext context){
    nameController.text = context.read<UserCubit>().state.model!.name;
    emailController.text = context.read<UserCubit>().state.model!.email;
  }

  void getSocials() {
     socialsRequester.request(fromRemote: false);
     socialsRequester.request();
  }

  Future<void> sendContactUs(BuildContext context) async {
    if (!formKey.currentState!.validate()) return;
    var params = _contactParams();
    final result = await getIt<GeneralRepositories>().contactUs(params);
    result.when(
      isSuccess: (msg) {
        AppSnackBar.showSuccessSnackBar(msg ?? Translate.s.message_sent_successfully);
        AutoRouter.of(context).maybePop();
      },
      isError: (error) {
        AppSnackBar.showErrorSnackBar(error: error);
      },
    );
  }

  ContactUsParams _contactParams() => ContactUsParams(
    name: nameController.text.trim(),
    email: emailController.text.trim(),
    title: titleController.text.trim(),
    message: messageController.text.trim(),
    phone: countryCodeObs.getValue().dialCode + phoneController.text.trim(),
  );


}