import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_clean_arch/Features/home/presentations/view/views/home_view.dart';
import 'package:weather_clean_arch/Features/weather/presentations/view/views/weather_view.dart';
import 'package:weather_clean_arch/core/helper/my_bindings.dart';

void main() {
  runApp(
    const WeatherApp(),
  );
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: HomeView.id,
      initialBinding: MyBindings(),
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: HomeView.id,
          page: () => const HomeView(),
        ),
        GetPage(
          name: WeatherView.id,
          page: () => const WeatherView(),
        ),
      ],
    );
  }
}
