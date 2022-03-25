import 'package:flutter/material.dart';
import 'profile.dart';
import '../models/news.dart';
import 'news_screen.dart';
import 'profile/profile.dart';
import 'iteams.dart';

class TabsScreen extends StatefulWidget {
  final List<News> favoriteMeals = [];
  static const routeName = '/tab-screen';

  TabsScreen();

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': NewsScreen(),
        'title': 'News',
      },
      {
        'page': Items(),
        'title': 'Progress',
      },
      {
        'page': ProfilePage(),
        'title': 'NFT',
      },
      {
        'page': ProfileScreen(),
        'title': 'Me',
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(_pages[_selectedPageIndex]['title']),
      // ),
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        unselectedItemColor: Colors.white,
        selectedItemColor: Color.fromARGB(255, 253, 255, 109),
        currentIndex: _selectedPageIndex,
        // type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 1, 146, 103),
            icon: Icon(Icons.article),
            label: 'News',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 1, 146, 103),
            icon: Icon(Icons.search),
            label: 'Progress',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 1, 146, 103),
            icon: Icon(Icons.nfc),
            label: 'NFT',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 1, 146, 103),
            icon: Icon(Icons.person),
            label: 'Me',
          ),
        ],
      ),
    );
  }
}
