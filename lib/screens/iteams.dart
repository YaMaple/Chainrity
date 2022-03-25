import 'package:flutter/material.dart';
import '../models/iteam_card.dart';
import 'constants_search.dart';

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

final List<Map<String, dynamic>> demoData = [
  {
    "image": "assets/images/project_1.jpeg",
    "title": "Star Baby",
    "description": "Saving children with autism",
    "foodType": "Chinese",
  },
  {
    "image": "assets/images/project_2.jpeg",
    "title": "Blood Disease Assistance",
    "description":
        "Poor children are eager for your help to raise treatment expenses",
    "foodType": "Chinese",
  },
  {
    "image": "assets/images/project_3.jpeg",
    "title": "Caring For The Elderly",
    "description": "Give empty-nest parents hope of love",
    "foodType": "Chinese",
  },
];
