import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/watchlist_screen.dart';
import 'profile.dart';
import '../widgets/main_drawer.dart';
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
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.yellow[400],
        currentIndex: _selectedPageIndex,
        // type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.article),
            label: 'News',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.search),
            label: 'Progress',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.nfc),
            label: 'NFT',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.person),
            label: 'Me',
          ),
        ],
      ),
    );
  }
}
