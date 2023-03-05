import 'package:flutter/material.dart';
import 'package:nobox_app/home/home.dart';
class tabs extends StatefulWidget {
  tabs({Key? key}) : super(key: key);

  static const String page_id = "Tabs";

  @override
  _tabsState createState() => _tabsState();
}

class _tabsState extends State<tabs> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        bottomNavigationBar: (TabBar(
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black,
          labelPadding: EdgeInsets.symmetric(horizontal: 0),
          labelStyle: const TextStyle(
            fontFamily: 'regular',
            fontSize: 12,
          ),
          onTap: (int index) => setState(() => _currentIndex = index),
          tabs: [
            Tab(
              icon: _currentIndex == 0
                  ? Icon(Icons.home)
                  : Icon(Icons.home_outlined),
            ),
            // Tab(
            //   icon: _currentIndex == 1
            //       ? Icon(Icons.search)
            //       : Icon(Icons.search_outlined),
            // ),
            // Tab(
            //   icon: _currentIndex == 2
            //       ? Icon(Icons.play_circle)
            //       : Icon(Icons.play_circle_outline),
            // ),
            // Tab(
            //   icon: _currentIndex == 3
            //       ? Icon(Icons.favorite)
            //       : Icon(Icons.favorite_outline),
            // ),
            // Tab(
            //   icon: _currentIndex == 4
            //       ? Icon(Icons.person)
            //       : Icon(Icons.person_outline),
            // ),
          ],
        )),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            HomePage(),
          ],
        ),
      ),
    );
  }
}
