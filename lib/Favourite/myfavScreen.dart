import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/Favourite/favourite_controller.dart';

class MyFav extends StatelessWidget {
  MyFav({super.key});

  final FavouriteController favouriteController =
      Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    print(favouriteController.favList);
    return Scaffold(
      appBar: AppBar(
        title: Text("MyFav List"),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: favouriteController.favList.length,
          itemBuilder: (context, index) {
            return Obx(
              () => ListTile(
                title: Text(" index ${favouriteController.favList[index]}"),
                trailing: TextButton(
                  onPressed: () {
                    favouriteController.removeAtList(index);
                  },
                  child: Text("Remove"),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
