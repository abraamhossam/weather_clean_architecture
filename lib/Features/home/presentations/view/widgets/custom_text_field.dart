import 'package:flutter/material.dart';
import 'package:weather_clean_arch/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'This Field is Required';
        } else {
          return null;
        }
      },
      controller: controller,
      cursorColor: kPrimaryColor,
      onSaved: (value) {},
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
    );
  }
}
