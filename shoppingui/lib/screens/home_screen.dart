// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shoppingui/widgets/item_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<String> _categories = [
    "Food",
    "Electronics",
    "Groceries",
    "Dress",
    "Medicines",
    "Gaming"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFE5E5E5),
        body: Padding(
          padding: const EdgeInsets.only(left: 29.0, top: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hello Al Sayeed",
                style: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 7.0),
              const Text(
                "Let’s gets something?",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 150,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  Container(
                    height: 150.0,
                    width: 300.0,
                    decoration: BoxDecoration(
                        color: const Color(0xFFF46D38),
                        borderRadius: BorderRadius.all(Radius.circular(17.0))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 13.0, top: 10.0, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "40% Off During \nCovid 19",
                            style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              "assets/images/food.png",
                              width: 130,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 24.0),
                  Container(
                    height: 150.0,
                    width: 300.0,
                    decoration: BoxDecoration(
                        color: const Color(0xFF3861F4),
                        borderRadius: BorderRadius.all(Radius.circular(17.0))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 13.0, top: 10.0, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "40% Off During \nCovid 19",
                            style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              "assets/images/food.png",
                              width: 130,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 24.0),
                  Container(
                    height: 150.0,
                    width: 300.0,
                    decoration: BoxDecoration(
                        color: const Color(0xFFF46D38),
                        borderRadius: BorderRadius.all(Radius.circular(17.0))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 13.0, top: 10.0, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "40% Off During \nCovid 19",
                            style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              "assets/images/food.png",
                              width: 130,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(height: 18.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Categories",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "View All",
                          style: TextStyle(
                              color: Color(0xFFFF4800), fontSize: 14.0),
                        )),
                  )
                ],
              ),

              //Categories
              SizedBox(
                height: 32.0,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _categories.length,
                    itemBuilder: (context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFC4C4C4),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(17.0))),
                          height: 32.0,
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25.0, vertical: 6.0),
                            child: Text(_categories[index]),
                          )),
                        ),
                      );
                    }),
              ),
              // SizedBox(height: 75.1),
              Expanded(
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 9,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 50.0, right: 25),
                      child: watchCard(),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
