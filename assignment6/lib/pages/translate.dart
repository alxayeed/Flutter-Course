import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslatePage extends StatelessWidget {
  const TranslatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.cyan,
              textColor: Colors.white,
              onPressed: () {
                Get.updateLocale(Locale('bn', 'BD'));
              },
              child: Text("buttonBangla".tr),
            ),
            MaterialButton(
              color: Colors.amber,
              textColor: Colors.black,
              onPressed: () {
                Get.updateLocale(Locale('en', 'US'));
              },
              child: Text("buttonEnglish".tr),
            )
          ],
        )),
      ),
    );
  }
}
