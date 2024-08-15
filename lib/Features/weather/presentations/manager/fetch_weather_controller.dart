import 'package:get/get.dart';
import 'package:weather_clean_arch/Features/weather/domain/entites/weather_entity.dart';
import 'package:weather_clean_arch/Features/weather/domain/use_cases/fetch_weather_use_case.dart';
import 'package:weather_clean_arch/core/errors/failure.dart';

class FetchWeatherController extends GetxController {
  Rx<String> state = ''.obs;
  WeatherEntity? dataSuccess;
  Failure? dataFailure;

  final FetchWeatherUseCase fetchWeatherUseCase;

  FetchWeatherController({
    required this.fetchWeatherUseCase,
  });
  getWeather({required String city}) async {
    state.value = 'loading';

    var result = await fetchWeatherUseCase.call(cityName: city);
    result.fold((l) {
      state.value = 'failure';
      dataFailure = l;
    }, (r) {
      state.value = 'success';
      dataSuccess = r;
    });
  }

  getImage() {
    if (dataSuccess!.weatherState == 'Clear') {
      return "assets/images/clear.png";
    } else if (dataSuccess!.weatherState == 'Clouds') {
      return "assets/images/cloudy.png";
    } else if (dataSuccess!.weatherState == 'Rainy') {
      return 'assets/images/rainy.png';
    } else if (dataSuccess!.weatherState == 'Snow') {
      return 'assets/images/snow.png';
    } else {
      return 'assets/images/thunderstorm.png';
    }
  }
}
