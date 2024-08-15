import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_clean_arch/Features/weather/presentations/manager/fetch_weather_controller.dart';
import 'package:weather_clean_arch/Features/weather/presentations/view/views/weather_view.dart';
import 'package:weather_clean_arch/constants.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  TextEditingController controller = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
  final FetchWeatherController fetchWeatherController = Get.find();

  String? city;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 24,
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'This Field is Required';
                } else {
                  return null;
                }
              },
              controller: controller,
              cursorColor: kPrimaryColor,
              onChanged: (value) {
                city = value;
              },
              decoration: const InputDecoration(
                hintText: "Enter The City",
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 20,
                ),
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: kPrimaryColor,
                    width: 2,
                  ),
                ),
              ),
            ),
            // CustomTextField(
            //   controller: controller,
            // ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
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
              onPressed: () async {
                if (formKey.currentState!.validate()) {
                  Get.toNamed(WeatherView.id);

                  await fetchWeatherController.getWeather(
                    city: city!,
                  );
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
            ),
            // CustomButton(
            //   formKey: formKey,
            //   controller: controller,
            // ),
          ],
        ),
      ),
    );
  }
}
