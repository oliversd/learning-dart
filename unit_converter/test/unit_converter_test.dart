import 'package:unit_converter/converter.dart';
import 'package:test/test.dart';

void main() {
  test('Convert 10 feets to meters', () {
    expect(converter(10, 'f'), 3.048);
  });

  test('Convert 10 meters to feets', () {
    expect(converter(10, 'm'), 32.808);
  });
}
