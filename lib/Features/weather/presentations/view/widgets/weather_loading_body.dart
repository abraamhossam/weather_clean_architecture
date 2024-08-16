import 'package:flutter/material.dart';
import 'package:weather_clean_arch/constants.dart';

class WeatherLoadingBody extends StatelessWidget {
  const WeatherLoadingBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: kPrimaryColor,
      ),
    );
  }
}
