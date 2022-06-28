import 'package:assignment5/pages/error.dart';
import 'package:assignment5/pages/homepage.dart';
import 'package:assignment5/pages/sucees_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        '/homepage': (context) => HomePage(),
        '/success': (context) => SuccessPage(),
        '/error': (context) => ErrorPage()
      },
      home: HomePage(),
    );
  }
}
