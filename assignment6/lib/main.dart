import 'package:assignment5/languages.dart';
import 'package:assignment5/pages/error.dart';
import 'package:assignment5/pages/homepage.dart';
import 'package:assignment5/pages/success_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //localizations
      translations: Languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('bn', 'BD'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // fontFamily: 'vaca',
        textTheme:
            GoogleFonts.exoTextTheme(Theme.of(context).textTheme.apply()),
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
