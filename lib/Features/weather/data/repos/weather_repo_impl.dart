import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:weather_clean_arch/Features/weather/data/data_sources/weather_remote_data_source.dart';
import 'package:weather_clean_arch/Features/weather/domain/entites/weather_entity.dart';
import 'package:weather_clean_arch/Features/weather/domain/repos/weather_repo.dart';
import 'package:weather_clean_arch/core/errors/failure.dart';

class WeatherRepoImpl extends WeatherRepo {
  final WeatherRemoteDataSource weatherRemoteDataSource;

  WeatherRepoImpl({
    required this.weatherRemoteDataSource,
  });

  @override
  Future<Either<Failure, WeatherEntity>> fetchWeather(
      {required String cityName}) async {
    try {
      return right(
          await weatherRemoteDataSource.fetchWeather(cityName: cityName));
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
