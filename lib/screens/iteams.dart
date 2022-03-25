import 'package:flutter/material.dart';
import '../models/iteam_card.dart';
import 'constants_search.dart';
import 'algorithm_screen.dart';

class Items extends StatefulWidget {
  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('News'),
          backgroundColor: Color.fromARGB(255, 1, 146, 103),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding - 5,
                  vertical: kDefaultPadding / 2),
              child: ItemCard(
                title: demoData[index]["title"],
                description: demoData[index]["description"],
                image: demoData[index]["image"],
                foodType: demoData[index]['foodType'],
                price: demoData[index]["price"],
                priceRange: demoData[index]["priceRange"],
                press: () => Navigator.of(context)
                    .pushNamed('/algorithm', arguments: index),
              ),
            );
          },
          itemCount: demoData.length,
        ));
  }
}

final List<Tab> demoTabs = <Tab>[
  Tab(
    child: Text('Most Populars'),
  ),
  Tab(
    child: Text('Beef & Lamb'),
  ),
  Tab(
    child: Text('Seafood'),
  ),
  Tab(
    child: Text('Appetizers'),
  ),
  Tab(
    child: Text('Dim Sum'),
  ),
];

final List<Map<String, dynamic>> demoData = List.generate(
  3,
  (index) => {
    "image": "assets/images/featured _items_${index + 1}.png",
    "title": "Cookie Sandwich",
    "description": "Shortbread, chocolate turtle cookies, and red velvet.",
    "price": 7.4,
    "foodType": "Chinese",
    "priceRange": "\$" * 2,
  },
);
