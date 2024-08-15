import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:weather_clean_arch/Features/weather/data/data_sources/weather_remote_data_source.dart';
import 'package:weather_clean_arch/Features/weather/data/repos/weather_repo_impl.dart';
import 'package:weather_clean_arch/Features/weather/domain/use_cases/fetch_weather_use_case.dart';
import 'package:weather_clean_arch/Features/weather/presentations/manager/fetch_weather_controller.dart';
import 'package:weather_clean_arch/core/helper/api_service.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(
      FetchWeatherController(
        fetchWeatherUseCase: FetchWeatherUseCase(
          weatherRepoImpl: WeatherRepoImpl(
            weatherRemoteDataSource: WeatherRemoteDataSourceImpl(
              apiService: ApiService(
                Dio(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
