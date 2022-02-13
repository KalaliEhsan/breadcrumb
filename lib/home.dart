import 'package:flutter/material.dart';
import 'package:my_bread_crumb/bread_crumb.dart';
import 'package:my_bread_crumb/next_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  static String route = '/';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Stack(children: [
        Container(
            color: Colors.white,
            child: Center(
                child: ElevatedButton(
                    child: const Text('Next Page'),
                    onPressed: () {
                      Navigator.pushNamed(context, NextPage.route);
                      breadcrumb.add(NextPage.route);
                    }))),
        Breadcrumb()
      ]),
    );
  }
}
