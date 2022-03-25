import 'package:flutter/material.dart';
import 'profile/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Color.fromARGB(255, 1, 146, 103),
      ),
      body: Body(),
    );
  }
}
