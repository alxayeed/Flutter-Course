import 'package:flutter/material.dart';

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
              onPressed: () {},
              child: const Text("Bangla"),
            ),
            MaterialButton(
              color: Colors.amber,
              textColor: Colors.black,
              onPressed: () {},
              child: const Text("English"),
            )
          ],
        )),
      ),
    );
  }
}
