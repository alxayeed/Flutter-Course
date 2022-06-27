// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyFavouritesTab extends StatelessWidget {
  const MyFavouritesTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 5,
              child: ListTile(
                tileColor: Colors.white,
                leading: Image.asset("assets/images/watch.png"),
                title: Text("Apple Watch"),
                subtitle: Text("Series 6 . Red"),
                trailing: Text("\$ 359"),
              ),
            ),
          );
        },
      ),
    );
  }
}
