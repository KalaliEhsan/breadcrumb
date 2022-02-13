import 'package:flutter/material.dart';
import 'package:my_bread_crumb/home.dart';
import 'package:my_bread_crumb/next_page.dart';
import 'package:my_bread_crumb/next_page1.dart';
import 'package:my_bread_crumb/next_page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        HomePage.route: (context) => HomePage(),
        NextPage.route: (context) => NextPage(),
        NextPage1.route: (context) => NextPage1(),
      },
    );
  }
}
