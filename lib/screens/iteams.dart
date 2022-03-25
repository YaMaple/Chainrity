import 'package:flutter/material.dart';
import '../models/iteam_card.dart';
import 'constants_search.dart';
import 'package:flutter_svg/svg.dart';

class Items extends StatefulWidget {
  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Projects'),
          backgroundColor: Color.fromARGB(255, 1, 146, 103),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: TextFormField(
              style: kSecondaryBodyTextStyle,
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 56, 214, 16),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 1.0, color: Color.fromARGB(255, 56, 214, 16)),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Search on Chainrity",
                contentPadding: kTextFieldPadding,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    'assets/images/search.svg',
                    color: kBodyTextColor,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
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
          ))
        ]));
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
    "foodType": "Shanghai, China",
  },
  {
    "image": "assets/images/project_2.jpeg",
    "title": "Blood Disease Assistance",
    "description":
        "Poor children are eager for your help to raise treatment expenses",
    "foodType": "China",
  },
  {
    "image": "assets/images/project_3.jpeg",
    "title": "Caring For The Elderly",
    "description": "Give empty-nest parents hope of love",
    "foodType": "Hebei, China",
  },
  {
    "image": "assets/images/project_4.png",
    "title": "Come on, Mulan!",
    "description": "Women are important and active participants in daily life",
    "foodType": "Guizhou, China",
  },
  {
    "image": "assets/images/project_5.png",
    "title": "\'Guangming\': Poverty alleviation project",
    "description":
        "Rehabilitation of  the elderly often means much more than people can imagine to a family",
    "foodType": "Shandong, China",
  },
];
