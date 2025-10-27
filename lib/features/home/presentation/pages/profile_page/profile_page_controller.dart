import 'package:flutter_tdd/core/constants/lang_code.dart';
import 'package:flutter_tdd/core/helpers/loading_helper.dart';
import 'package:flutter_tdd/features/auth/domain/repositories/auth_repositories.dart';
import 'package:flutter_tdd/features/home/data/model/lang_model/lang_model.dart';
import 'package:flutter_tdd/features/home/domain/entity/update_profile_image_params.dart';
import 'package:flutter_tdd/features/home/domain/repositories/home_repositories.dart';
import 'package:flutter_tdd/features/home/domain/requester/languages_requester.dart';
import 'profile_page_imports.dart';
import 'widgets/lang_bottom_sheet_widget.dart';
class ProfilePageController {
  final LanguagesRequester langRequester = LanguagesRequester();

  final ObsValue<String> profileImageObs = ObsValue<String>.withInit("");

  final ObsValue<bool> showAllStores = ObsValue<bool>.withInit(false);


  File? pickedImage;

  Future<void> getLanguages() async {
    langRequester.request(fromRemote: false);
    await langRequester.request();
    setDefaultLang();
  }

  Future<void> selectImage(BuildContext context) async {
    List<File>? result =
        await getIt<AppFileService>().pickFile(context, fileType: FileType.image, allowMultiple: false);
    if (result != null) {
      pickedImage = result.first;
      updateUserImage(context);
    } else {
      pickedImage = pickedImage;
    }
  }

  void navigateToChangePassword(BuildContext context) {
    AutoRouter.of(context).push(const ChangePasswordPageRoute());
  }



  void navigateToContactUs(BuildContext context) {
    AutoRouter.of(context).push(const ContactUsPageRoute());
  }

  void navigateToTermsConditions(BuildContext context) {
    AutoRouter.of(context).push(const TermsConditionsPageRoute());
  }

  void navigateToPrivacyPolicy(BuildContext context) {
    AutoRouter.of(context).push(const PrivacyPolicyPageRoute());
  }

  void navigateToNotifications(BuildContext context) {
    AutoRouter.of(context).push(const NotificationsPageRoute());
  }


  Future<void> logout(BuildContext context) async {
    getIt<LoadingHelper>().showLoadingDialog();
    final result = await getIt<AuthRepositories>().logout();
    result.when(
      isSuccess: (msg) async {
        await getIt<UserServicesHelper>().clearCashAndRoute(context);
        getIt<LoadingHelper>().dismissDialog();
        AppSnackBar.showSimpleToast(
            msg: msg ?? Translate.s.logged_out_successfully, type: ToastType.success, gravity: ToastGravity.BOTTOM);
      },
      isError: (error) {
        AppSnackBar.showErrorSnackBar(
          error: BaseError.unknown(msg: error.message),
        );
      },
    );
  }

  void goBack(BuildContext context) {
    AutoRouter.of(context).maybePop();
  }


  Future<void> getUserData() async {
    BuildContext context = getIt<GlobalContext>().context();
    var result = await getIt<HomeRepositories>().getProfile();
    result.when(
      isSuccess: (data) async {
        await getIt<UserServicesHelper>().updateUserData(context, data);
      },
      isError: (error) {},
    );
  }

  Future<void> updateUserImage(BuildContext context) async {
    var params = _updateParams();
    var result = await getIt<HomeRepositories>().updateProfileImage(params);
    result.when(
      isSuccess: (data) {
        getIt<UserServicesHelper>().updateUserData(context, data);
      },
      isError: (error) {},
    );
  }

  void showLangSheet(BuildContext context) {
    AppBottomSheets.showScrollableBody(
      context: context,
      backgroundColor: context.colors.white,
      builder: (context) {
        return LangBottomSheetWidget(controller: this);
      },
    );
  }

  void changeLang(LangModel model, BuildContext context) {
    String code = model.code;
    if (model.code == LangCode.ar) {
      code = ApplicationConstants.langAR;
    }
    if (model.code == LangCode.bd) {
      code = ApplicationConstants.langBN;
    }
    if (model.code == LangCode.pk) {
      code = ApplicationConstants.langUR;
    }
    List<LangModel> languages = langRequester.data!;
    for (var item in languages) {
      item.isDefault = false;
    }
    model.isDefault = true;
    getIt<Utilities>().changeLanguage(code, context);
    Navigator.pop(context);
  }

  void setDefaultLang() async {
    String? currentLang = GlobalState.instance.get(ApplicationConstants.langKey);
    List<LangModel> languages = langRequester.data!;
    for (var lang in languages) {
      if (lang.code == (currentLang ?? ApplicationConstants.langEN)) {
        lang.isDefault = true;
      }
    }
    langRequester.refresh();
  }



  UpdateProfileImageParams _updateParams() {
    return UpdateProfileImageParams(image: pickedImage!);
  }
}
