import 'package:flutter_tdd/features/auth/presentation/pages/supported_area/supported_area_imports.dart';

class SupportedAreaController {

  late final GoogleMapController mapController;

  final List<int> ranges = [20, 40, 50, 70, 90,100];

  final ObsValue<int> selectedRange = ObsValue<int>.withInit(20);
  final ObsValue<bool> showMap = ObsValue<bool>.withInit(false);
  late final ObsValue<LatLng> latLongObs;

  void getCurrentLocation(BuildContext context)async{
    var currentLocation = await getIt<LocationService>().getCurrentLocationWithPermission(context);
    if(currentLocation != null){
      latLongObs = ObsValue<LatLng>.withInit(currentLocation);
      showMap.setValue(true);
    }else{
      AutoRouter.of(context).maybePop();
      AppSnackBar.showSimpleToast(type: ToastType.error,msg: 'Please enable location permission');
    }
  }

  void initMapController(GoogleMapController controller){
    mapController = controller;
  }

  void onSelectNewLocation(LatLng newLocation){
    latLongObs.setValue(newLocation);
    latLongObs.refresh();
  }

  void updateRange(int range){
    selectedRange.setValue(range);
  }

}