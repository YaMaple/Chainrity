import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:intl/intl.dart';
import 'constants_search.dart';

class EasterEggScreen extends StatefulWidget {
  static const routeName = '/easter_egg';
  EasterEggScreen();

  @override
  EasterEggScreenState createState() => EasterEggScreenState();
}

class MyCard extends StatelessWidget {
  final String id;
  final DateTime date;
  final VoidCallback press;
  final int price;
  const MyCard(
      {required this.id,
      required this.date,
      required this.press,
      required this.price,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: press,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      id,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          fontFamily: "Mono"),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      DateFormat('yyyy-MM-dd - kk:mm').format(date),
                      style: TextStyle(
                        color: Colors.grey[400]!,
                        fontFamily: "SFProText",
                      ),
                    )
                  ],
                )
              ],
            ),
            Text(
              '${price} CNY',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "SFProText",
                fontSize: 14,
              ),
            ),
          ],
        ));
  }
}

class EasterEggScreenState extends State<EasterEggScreen> {
  @override
  Widget build(BuildContext context) {
    int index_navi = ModalRoute.of(context)!.settings.arguments as int;

    final List<Map<String, dynamic>> transAction_list = [
      {
        "id": "0xf0b431d7afc79da9c9c43e8f763b196c",
        "date": DateTime.utc(2022, 3, 24, 7, 16),
        "price": 400,
      },
      {
        "id": "0x8336f490c4286348741060f88528d442",
        "date": DateTime.utc(2022, 3, 22, 3, 16),
        "price": 300,
      },
      {
        "id": "0x4f7941702f596b4ee4657b3149de4ebc",
        "date": DateTime.utc(2022, 3, 20, 19, 30),
        "price": 250,
      },
      {
        "id": "0xd24a07ec659ec07e9618abd0f1c78da8",
        "date": DateTime.utc(2022, 3, 15, 21, 12),
        "price": 600,
      },
      {
        "id": "0xd24a07ec659ec07e9618abd0f1c78da8",
        "date": DateTime.utc(2022, 3, 10, 3, 12),
        "price": 540,
      },
      {
        "id": "0x05fe65ac91a28ef586daf98496db1880",
        "date": DateTime.utc(2022, 3, 8, 23, 1),
        "price": 720,
      },
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text("Transactions"),
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
                  child: MyCard(
                    id: transAction_list[index]["id"],
                    date: transAction_list[index]["date"],
                    press: () => Navigator.of(context)
                        .pushNamed('/algorithm', arguments: 0),
                    price: transAction_list[index]["price"],
                  ));
            },
            itemCount: transAction_list.length,
          ))
        ]));
  }
}
