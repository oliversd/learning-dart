/// Calculates the factorial of a positive [number].
///
/// Throws an [ArgumentError] if the number is negative.
///
/// ```dart
/// factorial(5) // result 120.0
/// ```
double factorial(double number) {
  if (number < 0) {
    throw ArgumentError('No factorials of negative numbers');
  }
  if (number <= 1) {
    return 1;
  }
  return number * factorial(number - 1);
}
