import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/Favourite/favouriteScreen.dart';
import 'package:learn_getx/counter/counterScreen.dart';
import 'package:learn_getx/imagePicker/imagePickerScreen.dart';
import 'package:learn_getx/login/loginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(color: Colors.white),
              color: Colors.deepPurple,
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 20)),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Learn GetX"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => CounterScreen());
                    },
                    child: Text("Counter"))),
            Center(
                child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => FavouriteScreen());
                  },
                  child: Text("Favourite")),
            )),
            Center(
                child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => ImagePickerScreen());
                  },
                  child: Text("Image Picker")),
            )),
            Center(
                child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => LoginScreen());
                  },
                  child: Text("Login")),
            ))
          ],
        ),
      ),
    );
  }
}
