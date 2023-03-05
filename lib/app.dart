import 'package:flutter/material.dart';
import 'package:nobox_app/home/home.dart';
import 'package:nobox_app/home/market.dart';
import 'package:nobox_app/home/people.dart';
import 'package:nobox_app/home/search.dart';
import 'package:nobox_app/init_screens/landing_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'NoBox',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MarketPage());
  }
}
