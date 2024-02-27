import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/imagePicker/image_controller.dart';

class ImagePickerScreen extends StatelessWidget {
  ImagePickerScreen({super.key});
  final ImageController imageController = Get.put(ImageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Obx(
              () => CircleAvatar(
                  radius: 50,
                  backgroundImage: imageController.imagepath.isNotEmpty
                      ? FileImage(File(imageController.imagepath.value))
                      : null),
            ),
          ),
          TextButton(
              onPressed: () {
                imageController.getImage();
              },
              child: Text("set image"))
        ],
      ),
    );
  }
}
