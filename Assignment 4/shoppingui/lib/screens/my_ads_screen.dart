import 'package:flutter/material.dart';
import 'package:shoppingui/screens/tabs/tabs.dart';

class MyAdsScreen extends StatelessWidget {
  const MyAdsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFE5E5E5),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: const Center(
              child: Text(
            "My Ads",
            style: TextStyle(color: Color(0xFF3A3030), fontSize: 22.0),
          )),
        ),
        body: Column(children: [
          Container(
            color: Colors.white,
            child: const TabBar(
                labelColor: Colors.black,
                indicatorColor: Color(0xFFC4C4C4),
                indicatorWeight: 4.0,
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.home,
                      color: Colors.black,
                    ),
                    text: "My Ads",
                  ),
                  Tab(
                    icon: Icon(
                      Icons.favorite_outline,
                      color: Colors.black,
                    ),
                    text: "My Favourites",
                  ),
                ]),
          ),
          const Expanded(
              child: TabBarView(children: [MyAdsTab(), MyFavouritesTab()]))
        ]),
      ),
    );
  }
}
