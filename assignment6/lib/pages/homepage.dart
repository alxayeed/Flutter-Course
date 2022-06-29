import 'package:assignment5/pages/error.dart';
import 'package:assignment5/pages/success_page.dart';
import 'package:assignment5/pages/translate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  var pages = [Login(), TranslatePage()];

  void changeIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text(
            'appBarTitle'.tr,
            style: const TextStyle(fontFamily: 'vaca'),
          ),
        ),
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: changeIndex,
          items: [
            BottomNavigationBarItem(
                icon: const Icon(Icons.home), label: "labelHome".tr),
            BottomNavigationBarItem(
                icon: const Icon(Icons.language), label: "labelTranslate".tr),
          ],
        ));
  }
}
