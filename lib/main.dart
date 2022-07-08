import 'package:flutter/material.dart';
import 'package:testlevel/screens/xscreens.dart';
import 'package:testlevel/static/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          visualDensity: VisualDensity.comfortable,
          primaryColor: TLColor.body,
          scaffoldBackgroundColor: TLColor.body,
          bottomAppBarTheme: const BottomAppBarTheme(color: TLColor.apps)),
      home: const HomeNav(),
    );
  }
}
