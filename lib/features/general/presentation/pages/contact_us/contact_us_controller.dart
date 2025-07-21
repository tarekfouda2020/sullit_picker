import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/helpers/country_picker.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';

import 'contact_us_imports.dart';

class ContactUsController {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();


  final TextEditingController messageController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  final ObsValue<CountryCode> countryCodeObs = ObsValue<CountryCode>.withInit(
      getIt<CountryPickerHelper>().defaultCountry
  );


  Future<void> selectCountryCode(BuildContext context)async{
    CountryCode? selectedCountry = await getIt<CountryPickerHelper>().selectCountrySheet(context);
    if(selectedCountry != null){
      countryCodeObs.setValue(selectedCountry);
      countryCodeObs.refresh();
    }
  }



}