import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_clean_arch/Features/weather/presentations/view/views/weather_view.dart';
import 'package:weather_clean_arch/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.formKey,
    required this.controller,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
        minimumSize: Size(
          MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height * 0.06,
        ),
      ),
      onPressed: () {
        if (formKey.currentState!.validate()) {
          Get.toNamed(WeatherView.id);
        }
        controller.clear();
      },
      child: const Text(
        "Searh",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}
