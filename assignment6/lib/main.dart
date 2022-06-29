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
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('bn', 'BD'),
      theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.cyan),
          dialogBackgroundColor: Colors.yellow.shade50,
          hintColor: Colors.blue.shade900,
          primarySwatch: Colors.blue,
          errorColor: Colors.redAccent.shade400,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: Colors.cyan, selectedItemColor: Colors.white),

          // fontFamily: 'vaca',
          textTheme: const TextTheme(
            button: TextStyle(fontSize: 18.0),
            bodyText2: TextStyle(fontSize: 16.0),
          ),
          useMaterial3: true,

          //button theme
          buttonTheme: const ButtonThemeData(focusColor: Colors.black),
          floatingActionButtonTheme: FloatingActionButtonThemeData()),

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
