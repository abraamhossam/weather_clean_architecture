import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_clean_arch/Features/weather/presentations/manager/fetch_weather_controller.dart';
import 'package:weather_clean_arch/Features/weather/presentations/view/widgets/success_body.dart';
import 'package:weather_clean_arch/constants.dart';

class WeatherHomeBody extends StatelessWidget {
  const WeatherHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<FetchWeatherController>(
      builder: (controller) {
        if (controller.state.value == 'success') {
          return SuccessBody(
            image: controller.getImage(),
            model: controller.dataSuccess!,
          );
        } else if (controller.state.value == 'failure') {
          return Center(
            child: Text(
              controller.dataFailure!.message.toString(),
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(
              color: kPrimaryColor,
            ),
          );
        }
      },
    );
  }
}
