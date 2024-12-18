import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:weatherapp/app/core/enum/weather_condition.dart';
import 'package:weatherapp/app/core/extensions/to_condition.dart';
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
