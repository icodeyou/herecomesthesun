import 'dart:math';

extension CapExtension on String {
  String get capitalize {
    if (length == 0) {
      return '';
    }
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  String get capitalizeFirstofEach {
    if (length == 0) {
      return '';
    }
    return split(' ').map((String str) => str.capitalize).join(' ');
  }
}

extension NumberExtension on double {
  double get kelvinToCelsius {
    // We approximate this calculation to 10^(-2)
    return (this - 273.15).precision(2);
  }

  double get celsiusToFahrenheit {
    // We approximate this calculation to 10^(-2)
    return (this * 9 / 5 + 32).precision(2);
  }

  double precision(int fractionDigits) {
    num mod = pow(10.0, fractionDigits);
    return ((this * mod).round().toDouble() / mod);
  }
}
