import 'package:flutter/material.dart';
import 'constants_search.dart';
import 'size_config.dart';

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
        '0xdc25ef3f5b8a186998338a2ada83795fba2d695e',
        "24 March 2022",
        "0.03",
        "0x898bbb8718f0a1aa877b611dec152184bqfweqff",
        "0xd8028a09ed7294ef8584adae55e401evjn900992",
        "0x730944969b1cd148ed0dd9cea25c92dsfcue2323",
        "China"
      ],
      [
        'Blood Disease Assistance',
        '0xrba2d695eqaa1123plpkpk94t9889dfwewfwefpc',
        "21 March 2022",
        "0.02",
        "0xfuiwehf37366fdiu267d67ff5d6d5df656fmnm12",
        "0xcbnb2iu2iu2i8909eriuu98334iu2n4nj2w88988",
        "0xlpzxcpz2mp4ip24575667cv6cv67cvq88sasd109",
        "China"
      ],
      [
        'Caring For The Elderly',
        '0xdc25ef3f5b8a186998338a2ada83795fba2d695e',
        "2 March 2022",
        "0.025",
        "0x2fdfyvyshdjjhwgt8382uwh2922iuifxiu0wefiu",
        "0xhuwuh2fuefh2hf2hh896448g8h02cnvnfeiruwii",
        "0x234cxzwefacvopo8f9977wiuefuhwhuefifuia97",
        "China"
      ],
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text("Project"),
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
              NormalRow(text: "Block ID"),
              hashRow(text: dataTable[index][4]),
              VerticalSpacing(of: 10),
              NormalRow(text: "From"),
              hashRow(text: dataTable[index][5]),
              VerticalSpacing(of: 10),
              NormalRow(text: "To"),
              hashRow(text: dataTable[index][6]),
              VerticalSpacing(of: 10),
              NormalRow(text: "Region"),
              NormalRow(text: dataTable[index][7])
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
        style: const TextStyle(color: Colors.black, fontFamily: "SFProText"),
      ),
    ],
  );
}

Row hashRow({required String text}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        text,
        style: TextStyle(
            color: Colors.black, fontFamily: "SFProText", fontSize: 12),
      )
    ],
  );
}
