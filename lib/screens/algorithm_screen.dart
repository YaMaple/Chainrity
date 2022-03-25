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
              NormalRow(text: "Test Project"),
              VerticalSpacing(of: 10),
              NormalRow(text: "Transaction Hash"),
              hashRow(text: "0xdc25ef3f5b8a186998338a2ada83795fba2d695e"),
              VerticalSpacing(of: 10),
              NormalRow(text: "Transaction Date"),
              NormalRow(text: "24 March 2022"),
              VerticalSpacing(of: 10),
              NormalRow(text: "Transaction Amount"),
              NormalRow(text: "0.5 ETH"),
              VerticalSpacing(of: 40),
              NormalRow(text: "Block ID"),
              hashRow(text: "0x898bbb8718f0a1aa877b611dec152184BA2D695E"),
              VerticalSpacing(of: 10),
              NormalRow(text: "From"),
              hashRow(text: "0xd8028a09ed7294ef8584adae55e401edA2D695E"),
              VerticalSpacing(of: 10),
              NormalRow(text: "To"),
              hashRow(text: "0x730944969b1cd148ed0dd9cea25c9274A2D695E"),
              VerticalSpacing(of: 10),
              NormalRow(text: "Region"),
              NormalRow(text: "China")
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
