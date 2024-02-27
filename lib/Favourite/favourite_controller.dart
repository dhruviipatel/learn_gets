import 'package:get/state_manager.dart';

class FavouriteController extends GetxController {
  RxList favList = [].obs;

  addInList(int index) {
    favList.add(index);
  }

  removefromList(int index) {
    favList.remove(index);
    favList.length--;
  }

  removeAtList(int index) {
    favList.removeAt(index);
  }
}
