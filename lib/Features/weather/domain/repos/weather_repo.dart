import 'package:dartz/dartz.dart';
import 'package:weather_clean_arch/Features/weather/domain/entites/weather_entity.dart';
import 'package:weather_clean_arch/core/errors/failure.dart';

abstract class WeatherRepo {
  Future<Either<Failure, WeatherEntity>> fetchWeather(
      {required String cityName});
}
