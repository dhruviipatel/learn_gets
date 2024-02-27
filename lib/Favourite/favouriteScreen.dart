import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/Favourite/favourite_controller.dart';
import 'package:learn_getx/Favourite/myfavScreen.dart';

class FavouriteScreen extends StatelessWidget {
  FavouriteScreen({super.key});

  final FavouriteController favouriteController =
      Get.put(FavouriteController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text("Favourite")),
      floatingActionButton: Stack(
        children: [
          FloatingActionButton(
            onPressed: () {
              Get.to(MyFav());
            },
            child: Icon(
              Icons.favorite_border,
              color: Colors.deepPurple,
            ),
          ),
          Obx(
            () => Positioned(
              right: 10,
              top: 10,
              child: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    favouriteController.favList.length.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("index $index"),
            trailing: IconButton(
              onPressed: () {
                if (favouriteController.favList.contains(index)) {
                  favouriteController.removefromList(index);
                } else {
                  favouriteController.addInList(index);
                }
              },
              icon: Obx(
                () => Icon(
                  favouriteController.favList.contains(index)
                      ? Icons.favorite
                      : Icons.favorite_border_outlined,
                  color: Colors.red,
                ),
              ),
            ),
          );
        },
      ),
    ));
  }
}
