import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 0.obs;

  incrementCounter() {
    counter.value++;
  }

  decrementCounter() {
    if (counter.value > 0) {
      counter.value--;
    }
  }

  RxDouble opacity = .4.obs;

  setOpacity(double val) {
    opacity.value = val;
  }

  RxBool notification = false.obs;

  setNotification(bool val) {
    notification.value = val;
  }
}
