/// Converts between feets and meters [number].
///
///
/// ```dart
/// unit_converter(10, 'f') // result 3.048
/// ```
double converter(double input, String unit_from) {
  final factor = 3.2808;

  if (unit_from == 'f') {
    var convert = (input / factor).toStringAsFixed(3);
    return double.parse(convert);
  }

  var convert = (input * factor).toStringAsFixed(3);
  return double.parse(convert);
}
