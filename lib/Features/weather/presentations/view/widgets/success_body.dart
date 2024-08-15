import 'package:flutter/material.dart';
import 'package:weather_clean_arch/Features/weather/domain/entites/weather_entity.dart';
import 'package:weather_clean_arch/constants.dart';

class SuccessBody extends StatelessWidget {
  const SuccessBody({
    super.key,
    required this.model,
    required this.image,
  });
  final WeatherEntity model;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            kPrimaryColor,
            kPrimaryColor[50]!,
            kPrimaryColor[100]!,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            model.cityName,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                image,
              ),
              Text(
                "${model.temp.toInt()}",
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
              Column(
                children: [
                  Text(
                    "${model.maxTemp.toInt()}",
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "${model.minTemp.toInt()}",
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            model.weatherState,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
