import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_clean_arch/Features/weather/presentations/manager/fetch_weather_controller.dart';
import 'package:weather_clean_arch/Features/weather/presentations/view/widgets/weather_failure_body.dart';
import 'package:weather_clean_arch/Features/weather/presentations/view/widgets/weather_loading_body.dart';
import 'package:weather_clean_arch/Features/weather/presentations/view/widgets/weather_success_body.dart';

class WeatherHomeBody extends StatelessWidget {
  const WeatherHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<FetchWeatherController>(
      builder: (controller) {
        if (controller.state.value == 'success') {
          return WeatherSuccessBody(
            image: controller.getImage(),
            model: controller.dataSuccess!,
          );
        } else if (controller.state.value == 'failure') {
          return WeatherFailureBody(
            controller: controller,
          );
        } else {
          return const WeatherLoadingBody();
        }
      },
    );
  }
}
