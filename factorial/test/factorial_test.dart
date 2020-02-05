import 'package:factorial/factorial.dart';
import 'package:test/test.dart';

void main() {
  test('Factorial of 5', () {
    expect(factorial(5), 120.0);
  });
  test('Factorial of 0', () {
    expect(factorial(0), 1);
  });

  test('Factorial of negative number', () {
    expect(
        () => factorial(-5),
        throwsA(predicate((e) =>
            e is ArgumentError &&
            e.message == 'No factorials of negative numbers')));
  });
}
