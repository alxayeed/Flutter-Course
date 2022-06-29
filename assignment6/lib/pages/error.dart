import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Oops! inputs are not correct!"),
            MaterialButton(
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, '/homepage');
              },
              child: const Text("Try Again"),
            )
          ],
        )),
      ),
    );
  }
}
