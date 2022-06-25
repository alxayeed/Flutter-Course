import 'package:flutter/material.dart';
import 'package:shoppingui/widgets/item_card.dart';

class MyAdsTab extends StatelessWidget {
  const MyAdsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 2,
        padding: EdgeInsets.all(10),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (_, index) {
          return watchCard();
        });
  }
}
