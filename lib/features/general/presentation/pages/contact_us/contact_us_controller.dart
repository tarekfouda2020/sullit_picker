import 'contact_us_imports.dart';
import 'package:flutter_tdd/features/general/domain/requesters/socials_requester.dart';
import 'package:flutter_tdd/features/general/data/models/social_contact_us_model/social_contact_us_model.dart';

class ContactUsController {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
        AppSnackBar.showSuccessSnackBar(msg ?? 'Message sent successfully');
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