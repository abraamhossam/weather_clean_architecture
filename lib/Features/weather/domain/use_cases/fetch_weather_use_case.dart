import 'package:dartz/dartz.dart';
import 'package:weather_clean_arch/Features/weather/data/repos/weather_repo_impl.dart';
import 'package:weather_clean_arch/Features/weather/domain/entites/weather_entity.dart';
import 'package:weather_clean_arch/core/errors/failure.dart';

class FetchWeatherUseCase {
  final WeatherRepoImpl weatherRepoImpl;

  FetchWeatherUseCase({required this.weatherRepoImpl});

  Future<Either<Failure, WeatherEntity>> call({required String cityName}) {
    return weatherRepoImpl.fetchWeather(cityName: cityName);
  }
}
