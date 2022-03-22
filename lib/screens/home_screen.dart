import 'package:flutter/material.dart';
import 'constants_search.dart';
import 'size_config.dart';

import 'components_home/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// If you set your home screen as first screen make sure call [SizeConfig().init(context)]
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        backgroundColor: Color.fromARGB(0xff, 0x14, 0x27, 0x4e),
      ),
      body: Body(),
    );
  }
}
