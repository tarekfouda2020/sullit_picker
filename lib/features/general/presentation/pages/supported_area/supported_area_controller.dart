import 'package:flutter_tdd/core/errors/base_error.dart';
import 'package:flutter_tdd/core/helpers/loading_helper.dart';
import 'package:flutter_tdd/core/helpers/user_services_helper.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/auth/domain/entity/register_params.dart';
import 'package:flutter_tdd/features/auth/domain/repositories/auth_repositories.dart';
import 'package:flutter_tdd/features/general/presentation/pages/supported_area/supported_area_imports.dart';

class SupportedAreaController {
  late final GoogleMapController mapController;

  final  List<int> ranges = const [20, 40, 50, 70, 90, 100, 120, 140, 150, 170, 190, 200];

  final ObsValue<int> selectedRange = ObsValue<int>.withInit(20);
  final ObsValue<bool> showMap = ObsValue<bool>.withInit(false);
  late final ObsValue<LatLng> latLongObs;
  late final bool fromProfile;
  RegisterParams? registerParams;

  SupportedAreaController(bool enterFromProfile) {
    fromProfile = enterFromProfile;
  }

  void getCurrentLocation(BuildContext context) async {
    var currentLocation = await getIt<LocationService>().getCurrentLocationWithPermission(context);
    if (currentLocation != null) {
      latLongObs = ObsValue<LatLng>.withInit(currentLocation);
      showMap.setValue(true);
    } else {
      AutoRouter.of(context).maybePop();
      AppSnackBar.showSimpleToast(type: ToastType.error, msg: 'Please enable location permission');
    }
  }

  void initMapController(GoogleMapController controller) {
    mapController = controller;
  }

  void onSelectNewLocation(LatLng newLocation) {
    latLongObs.setValue(newLocation);
    latLongObs.refresh();
  }

  void updateRange(int range) {
    selectedRange.setValue(range);
  }

  void confirmSaveRanges(BuildContext context) async {
    if (fromProfile) {
      AutoRouter.of(context).maybePop();
    } else {
      confirmLocation(context);
    }
  }

  /// value is in meters >> *1000 to be in km
  /// back end take it in meters and convert it to km
  double get rangeArea => (selectedRange.getValue() * 1000);

  Future<void> confirmLocation(BuildContext context) async {
    updateLocationParams();
    getIt<LoadingHelper>().showLoadingDialog();
    var result = await getIt<AuthRepositories>().registerUser(registerParams!);
    result.when(
      isSuccess: (data) async {
        saveDataAndRouteToSubscription(context,data);
      },
      isError: (error) {
        AppSnackBar.showErrorSnackBar(error: BaseError.unknown(msg: "Something went wrong"));
        AutoRouter.of(context).maybePop();
      },
    );
    getIt<LoadingHelper>().dismissDialog();
  }


  void updateLocationParams(){
    registerParams?.coverageArea = (rangeArea / 1000).toInt();
    registerParams?.lat = latLongObs.getValue().latitude;
    registerParams?.lng = latLongObs.getValue().longitude;
  }

  Future<void> saveDataAndRouteToSubscription(BuildContext context, UserModel? data) async{
    await getIt<UserServicesHelper>().updateUserData(context,data);
    AppSnackBar.showSuccessSnackBar(Translate.of(context).registration_successful);
    AutoRouter.of(context).push( SubscriptionPageRoute(fromAuth: true));
  }

}
