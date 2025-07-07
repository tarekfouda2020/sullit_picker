import "package:flutter_tdd/core/theme/colors/colors_extension.dart";
import"../supported_area_imports.dart";

class CoveredAreaMapWidget extends StatelessWidget {
  final SupportedAreaController controller;
  const CoveredAreaMapWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ObsValueConsumer(
        observable: controller.showMap,
        builder: (context,showMap) {
          if(showMap){
            return ObsValueConsumer<LatLng>(
                observable: controller.latLongObs,
                builder: (context,value) {
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      GoogleMap(
                        initialCameraPosition: CameraPosition(
                          target: value,
                          zoom: 10,
                        ),
                        circles: {
                          Circle(
                            circleId: const CircleId('range'),
                            center: value,
                            radius: (controller.selectedRange.getValue() * 1000),
                            fillColor: context.colors.darkRose.withValues(alpha: 0.2),
                            strokeColor: context.colors.darkRose,
                            strokeWidth: 1,
                          ),
                        },
                        markers: {
                          Marker(
                            markerId: const MarkerId('center'),
                            position: value,
                            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
                          ),
                        },
                        myLocationButtonEnabled: true,
                        zoomControlsEnabled: false,
                        onMapCreated: (mapController) => controller.initMapController(mapController),
                        onTap: (latLng) => controller.onSelectNewLocation(latLng),
                      ),
                    ],
                  );
                }
            );
          }else{
            return Gaps.empty;
          }
        }
      ),
    );
  }
}
