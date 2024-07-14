import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:weatherapp/app/core/enum/weather_condition.dart';
import 'package:weatherapp/features/weather/domain/entities/weather_entity.dart';

part 'weather_dto.g.dart';

@JsonSerializable()
class WeatherDto extends Equatable {
  const WeatherDto({required this.temperature, required this.weatherCode});

  factory WeatherDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherDtoFromJson(json);

  final double? temperature;
  @JsonKey(name: 'weathercode')
  final double? weatherCode;

  @override
  List<Object?> get props => [
        temperature,
        weatherCode,
      ];

  WeatherEntity toEntity() => WeatherEntity(
        temperature: temperature ?? 0.0,
        weatherCode: weatherCode ?? 0.0,
        lastUpdated: DateTime.now(),
        weatherCondition:
            weatherCode?.toInt().toCondition ?? WeatherCondition.unknown,
      );
}

extension on int {
  WeatherCondition get toCondition {
    switch (this) {
      case 0:
        return WeatherCondition.clear;
      case 1:
      case 2:
      case 3:
      case 45:
      case 48:
        return WeatherCondition.cloudy;
      case 51:
      case 53:
      case 55:
      case 56:
      case 57:
      case 61:
      case 63:
      case 65:
      case 66:
      case 67:
      case 80:
      case 81:
      case 82:
      case 95:
      case 96:
      case 99:
        return WeatherCondition.rainy;
      case 71:
      case 73:
      case 75:
      case 77:
      case 85:
      case 86:
        return WeatherCondition.snowy;
      default:
        return WeatherCondition.unknown;
    }
  }
}
