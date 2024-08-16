import 'package:flutter/material.dart';
import 'package:weather_clean_arch/Features/weather/presentations/manager/fetch_weather_controller.dart';

class WeatherFailureBody extends StatelessWidget {
  const WeatherFailureBody({
    super.key,
    required this.controller,
  });
  final FetchWeatherController controller;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error_outline,
            size: 64,
          ),
          const SizedBox(
            height: 28,
          ),
          Text(
            controller.dataFailure!.message,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
