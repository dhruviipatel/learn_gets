import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/counter/counter_conteroller.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({super.key});

  final CounterController counterConteroller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Counter & set opacity"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Switch :",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Notification Switch :",
                    style: TextStyle(fontSize: 20),
                  ),
                  Transform.scale(
                    scale: 0.8,
                    child: Switch(
                        value: counterConteroller.notification.value,
                        onChanged: (val) {
                          counterConteroller.setNotification(val);
                        }),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Set Opacity:",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Obx(
              () => Container(
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.red
                          .withOpacity(counterConteroller.opacity.value),
                    ),
                    Slider(
                        value: counterConteroller.opacity.value,
                        onChanged: (val) {
                          counterConteroller.setOpacity(val);
                        }),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Set Counter:",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Obx(
              () => Center(
                  child: Text(
                counterConteroller.counter.toString(),
                style: TextStyle(fontSize: 30),
              )),
            ),
            SizedBox(height: 40),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        counterConteroller.incrementCounter();
                      },
                      child: Text(
                        "+",
                        style: TextStyle(fontSize: 20),
                      )),
                  SizedBox(width: 20),
                  ElevatedButton(
                      onPressed: () {
                        counterConteroller.decrementCounter();
                      },
                      child: Text(
                        "-",
                        style: TextStyle(fontSize: 20),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
