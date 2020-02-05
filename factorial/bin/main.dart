import 'dart:convert';
import 'dart:io';
import 'package:factorial/factorial.dart' as factorial;

void main(List<String> arguments) {
  print('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
  print(
      '\x1B[94m This program calculates the Factorial of a positive integer \x1B[0m');
  print('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
  print('Enter a positive integer');
  var line = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
  var fact = factorial.factorial(double.parse(line.trim()));
  print('The factorial of ${line.trim()} is $fact');
}
