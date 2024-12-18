import 'package:flutter/material.dart';
import 'package:weatherapp/app/core/cubit/cubit.dart';
import 'package:weatherapp/app/core/enum/weather_condition.dart';
import 'package:weatherapp/features/weather/domain/entities/weather_entity.dart';

@lazySingleton
class ThemeCubit extends BaseCubit<Color> {
  ThemeCubit() : super(defaultColor);

  static const defaultColor = Color(0xFF2196F3);

  void onUpdateTheme(WeatherEntity weather) {
    if (weather != WeatherEntity.empty()) emit(weather.toColor);
  }
}

extension WeatherColorExtension on WeatherEntity {
  Color get toColor {
    switch (weatherCondition) {
      case WeatherCondition.clear:
        return Colors.yellow;
      case WeatherCondition.snowy:
        return Colors.lightBlueAccent;
      case WeatherCondition.cloudy:
        return Colors.blueGrey;
      case WeatherCondition.rainy:
        return Colors.indigoAccent;
      case WeatherCondition.unknown:
        return ThemeCubit.defaultColor;
    }
  }
}
