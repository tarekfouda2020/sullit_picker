class UpdateCoverageAreaParams {
  final String? mapDesc;
  final double lat;
  final double lng;
  final int coverageRadius;

  UpdateCoverageAreaParams({
    required this.lat,
    required this.lng,
    required this.coverageRadius,
    this.mapDesc,
  });

  Map<String, dynamic> toJson() => {
        if (mapDesc != null) "map_desc": mapDesc,
        "lat": lat,
        "lng": lng,
        "coverage_radius_km": coverageRadius,
      };
}
