import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_clean_arch/Features/home/presentations/view/views/home_view.dart';
import 'package:weather_clean_arch/Features/weather/presentations/view/widgets/weather_home_body.dart';
import 'package:weather_clean_arch/constants.dart';

class WeatherView extends StatelessWidget {
  const WeatherView({super.key});
  static String id = "/WeatherView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text(
          "Weather App",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.offAllNamed(HomeView.id);
            },
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: const WeatherHomeBody(),
    );
  }
}
