import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Text("welcome".tr)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/homepage");
        },
        child: const Icon(Icons.arrow_back_ios_sharp),
      ),
    );
  }
}
