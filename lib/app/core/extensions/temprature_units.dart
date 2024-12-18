// ignore_for_file: unused_local_variable

import 'package:mobile/app/core/enum/temperature_units.dart';

extension TemperatureUnitsX on TemperatureUnits {
  bool get isCelsius => this == TemperatureUnits.celsius;
  bool get isFahrenheit => this == TemperatureUnits.fahrenheit;
}
