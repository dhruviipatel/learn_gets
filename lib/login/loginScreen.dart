import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/login/login_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                controller: loginController.emailController.value,
                decoration: InputDecoration(hintText: "Email"),
              ),
              TextFormField(
                controller: loginController.passController.value,
                decoration: InputDecoration(hintText: "Password"),
              ),
              ElevatedButton(
                  onPressed: () {
                    loginController.login();
                  },
                  child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
