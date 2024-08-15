import 'package:weather_clean_arch/Features/weather/data/models/weather_model/weather_model.dart';
import 'package:weather_clean_arch/Features/weather/domain/entites/weather_entity.dart';
import 'package:weather_clean_arch/core/helper/api_service.dart';

abstract class WeatherRemoteDataSource {
  Future<WeatherEntity> fetchWeather({required String cityName});
}

class WeatherRemoteDataSourceImpl extends WeatherRemoteDataSource {
  final ApiService apiService;

  WeatherRemoteDataSourceImpl({
    required this.apiService,
  });

  @override
  Future<WeatherEntity> fetchWeather({required String cityName}) async {
    String apiKey = 'a77881160396f6419f91be40086a7cc6';
    Map<String, dynamic> data = await apiService.get(
      endPoint: "weather?q=$cityName&appid=$apiKey",
    );

    return WeatherModel.fromJson(data);
  }
}
