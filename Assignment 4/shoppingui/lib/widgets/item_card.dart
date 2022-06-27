// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Widget watchCard() {
  return Padding(
    padding: EdgeInsets.only(top: 28.0),
    child: Card(
      elevation: 3,
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
        Radius.circular(20.0),
      )),
      child: Stack(clipBehavior: Clip.none, children: [
        Positioned(
          top: -50,
          child: Image.asset(
            "assets/images/watch.png",
            height: 147,
            width: 151,
            colorBlendMode: BlendMode.clear,
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Apple Watch",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.9),
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Series 6 . Red",
                  style: TextStyle(
                      color: Color(0xFF868686).withOpacity(0.9),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "\$ 359",
                  style: TextStyle(
                      color: Color(0xFF5956E9),
                      fontSize: 17.0,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        )
      ]),
    ),
  );
}
