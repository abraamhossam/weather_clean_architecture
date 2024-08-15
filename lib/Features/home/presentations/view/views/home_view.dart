import 'package:flutter/material.dart';
import 'package:weather_clean_arch/Features/home/presentations/view/widgets/home_view_body.dart';
import 'package:weather_clean_arch/constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = "/HomeView";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: const Text(
            "Weather App",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: const HomeViewBody(),
      ),
    );
  }
}
