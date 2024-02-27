import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passController = TextEditingController().obs;
  login() async {
    final url = "https://reqres.in/api/login";

    final body = {
      "email": emailController.value.text,
      "password": passController.value.text
    };

    final response = await post(Uri.parse(url), body: body);

    if (response.statusCode == 200) {
      print(response.body);
      Get.snackbar("Login Successfull", "Congratulations");
    } else {
      Get.snackbar("Login Failed", "Enter currect credentials");
    }
  }
}
