import 'package:flutter/material.dart';
import 'constants_search.dart';
import 'size_config.dart';
import 'dart:ui';

class AlgorithmScreen extends StatefulWidget {
  static const routeName = '/algorithm';
  AlgorithmScreen();

  @override
  AlgorithmScreenState createState() => AlgorithmScreenState();
}

class AlgorithmScreenState extends State<AlgorithmScreen> {
  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;

    const dataTable = [
      [
        'Star Baby',
        '0xf0b431d7afc79da9c9c43e8f763b196c',
        "24 March 2022",
        "400",
        "0x4f2882c31293324351ee47bb025e6094",
        "0x730944969b1cd148ed0dd9cea25c92ds",
        "China"
      ],
      [
        'Blood Disease Assistance',
        '0xrba2d695eqaa1123plpkpk94t9889dfwewfwefpc',
        "21 March 2022",
        "0.02",
        "0xcbnb2iu2iu2i8909eriuu98334iu2n4nj2w88988",
        "0xlpzxcpz2mp4ip24575667cv6cv67cvq88sasd109",
        "China"
      ],
      [
        'Caring For The Elderly',
        '0xdc25ef3f5b8a186998338a2ada83795fba2d695e',
        "2 March 2022",
        "0.025",
        "0xhuwuh2fuefh2hf2hh896448g8h02cnvnfeiruwii",
        "0x234cxzwefacvopo8f9977wiuefuhwhuefifuia97",
        "China"
      ],
      [
        'Come on, Mulan!',
        '0xdc25ef3f5b8a186998338a2ada83795fba2d695e',
        "2 March 2022",
        "0.025",
        "0xhuwuh2fuefh2hf2hh896448g8h02cnvnfeiruwii",
        "0x234cxzwefacvopo8f9977wiuefuhwhuefifuia97",
        "China"
      ],
      [
        '\'Guangming\': Poverty alleviation project',
        '0xdc25ef3f5b8a186998338a2ada83795fba2d695e',
        "2 March 2022",
        "0.025",
        "0xhuwuh2fuefh2hf2hh896448g8h02cnvnfeiruwii",
        "0x234cxzwefacvopo8f9977wiuefuhwhuefifuia97",
        "China"
      ],
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text("Detail"),
          backgroundColor: Color.fromARGB(255, 1, 146, 103),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              SizedBox(
                height: 12.0,
              ),
              NormalRow(text: "Project Name"),
              NormalRow(text: dataTable[index][0]),
              VerticalSpacing(of: 10),
              NormalRow(text: "Transaction Hash"),
              hashRow(text: dataTable[index][1]),
              VerticalSpacing(of: 10),
              NormalRow(text: "Transaction Date"),
              NormalRow(text: dataTable[index][2]),
              VerticalSpacing(of: 10),
              NormalRow(text: "Transaction Amount"),
              NormalRow(text: dataTable[index][3]),
              VerticalSpacing(of: 40),
              VerticalSpacing(of: 10),
              NormalRow(text: "From"),
              hashRow(text: dataTable[index][4]),
              VerticalSpacing(of: 10),
              NormalRow(text: "To"),
              hashRow(text: dataTable[index][5]),
              VerticalSpacing(of: 10),
              NormalRow(text: "Region"),
              NormalRow(text: dataTable[index][6])
            ],
          ),
        ));
  }
}

Row NormalRow({required String text}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontFamily: "SFProText",
        ),
      ),
    ],
  );
}

Row hashRow({required String text}) {
  return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
    Text(
      text,
      style: TextStyle(
        color: Colors.black,
        fontFamily: "Mono",
        fontSize: 13,
      ),
    ),
  ]);
}
