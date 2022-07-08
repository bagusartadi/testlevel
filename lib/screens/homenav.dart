import 'package:flutter/material.dart';
import 'package:testlevel/models/tabmenu.dart';
import 'package:testlevel/static/color.dart';
import 'xscreens.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({Key? key}) : super(key: key);

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  final List<Widget> _screen = const [
    HomePage(),
    ActionPage(),
    ScaryPage(),
    DramaPage(),
    FunnyPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _screen.length,
      child: Scaffold(
        bottomNavigationBar: TabBar(
          tabs: tabMenu
              .map((e) => Tab(text: e.title, icon: Icon(e.icon)))
              .toList(),
          indicator:
              const BoxDecoration(border: Border(top: BorderSide(width: 2.0))),
          indicatorSize: TabBarIndicatorSize.tab,
        ),
        body: TabBarView(children: _screen),
      ),
    );
  }
}
