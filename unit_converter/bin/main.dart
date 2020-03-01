import 'package:unit_converter/converter.dart' as converter;

void help() {
  print(
      'Use: \x1B[34m dart bin/main.dart f 10 \x1B[0m \x1B[32m # converts 10 feets to meters \x1B[0m');
  print(
      'Use: \x1B[34m dart bin/main.dart m 10 \x1B[0m \x1B[32m # converts 10 meters to feets \x1B[0m');
  print('Options:');
  print('\x1B[1m --help, h:\x1B[0m Prints this message');
  print('\x1B[1m f [number]:\x1B[0m Feets to meters');
  print('\x1B[1m m [number]:\x1B[0m Meters to feets');
}

int main(List<String> arguments) {
  double measurement;
  print('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
  print('\x1B[94m This program converts between feets and meters \x1B[0m');
  print('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
  if (arguments.isEmpty ||
      arguments[0].trim() == 'h' ||
      arguments[0].trim() == '--help') {
    print('\x1B[33m You have to pass the required options \x1B[0m');
    help();
    return 0;
  }
  if (arguments[0].trim() == 'm' || arguments[0].trim() == 'f') {
    try {
      measurement = double.parse(arguments[1]);
    } catch (_) {
      print('\x1B[31m Error: The second argument must be a number. \x1B[0m');
      help();
      return 1;
    }

    print(
        'Hello world: ${converter.converter(measurement, arguments[0].trim())}!');
  } else {
    print(
        '\x1B[31m Error: You have to define from what unit you want to convert from (f: feet, m: meters) \x1B[0m');
    help();
    return 2;
  }

  return 0;
}
