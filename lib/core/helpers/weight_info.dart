class WeightInfo {
  final double value;
  final String unit; // "kg" or "g"

  const WeightInfo(this.value, this.unit);

  @override
  String toString() => '$value $unit';


  static WeightInfo? extractWeight(String input) {
    final regex = RegExp(
      r'^\s*(\d+(?:\.\d+)?)\s*(kg|g)\s*$',
      caseSensitive: false,
    );

    final match = regex.firstMatch(input.trim());
    if (match != null) {
      return WeightInfo(
        double.parse(match.group(1)!),
        match.group(2)!.toLowerCase(),
      );
    }
    return null;
  }

}