import 'package:flutter/material.dart';
import 'package:untitled3/pages/dressing.dart';
import 'package:untitled3/pages/dua_page.dart';
import 'package:untitled3/pages/food.dart';
import 'package:untitled3/pages/home_dua.dart';
import 'package:untitled3/pages/my_home_page.dart';
import 'package:untitled3/pages/safer_page.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.blue,
        appBar: AppBar(title: Text('24 Hours Of Life')),
        body: homePage(),
      ),
    );
  }
}
