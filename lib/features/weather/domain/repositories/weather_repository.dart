import 'package:dartz/dartz.dart';
import 'package:weatherapp/app/core/error/error.dart';
import 'package:weatherapp/features/weather/infrastructure/dtos/location_dto.dart';
import 'package:weatherapp/features/weather/infrastructure/dtos/weather_dto.dart';

abstract class WeatherRepository {
  Future<Either<AppError, WeatherDto>> getWeatherData({
    required double latitude,
    required double longitude,
  });

  Future<Either<AppError, LocationDto>> getLocationSearch({
    required String query,
  });
}
