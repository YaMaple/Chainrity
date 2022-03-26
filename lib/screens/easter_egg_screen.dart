import 'package:flutter/material.dart';

import '../models/bidder.dart';
import 'detail/widgets/bidder_list.dart';

import 'detail/widgets/bidder_card.dart';

import 'constants_search.dart';

class EasterEggScreen extends StatefulWidget {
  static const routeName = '/easter_egg';
  EasterEggScreen();

  @override
  EasterEggScreenState createState() => EasterEggScreenState();
}

class EasterEggScreenState extends State<EasterEggScreen> {
  @override
  Widget build(BuildContext context) {
    int index_navi = ModalRoute.of(context)!.settings.arguments as int;

    const transAction_list = [];

    return Scaffold(
        appBar: AppBar(
          title: Text("Detail"),
          backgroundColor: Color.fromARGB(255, 1, 146, 103),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
              child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (ctx, index) {
              return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding - 5,
                      vertical: kDefaultPadding / 2),
                  child: BidderCard(
                    bidder:
                        Bidder(name: "efef", date: DateTime.now(), price: 23),
                    press: () => {},
                  ));
            },
            itemCount: 3,
          ))
        ]));
  }
}
