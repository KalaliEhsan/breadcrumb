import 'package:flutter/material.dart';
import 'package:my_bread_crumb/bread_crumb.dart';
import 'package:my_bread_crumb/next_page1.dart';

class NextPage extends StatefulWidget {
  NextPage({Key? key}) : super(key: key);
  static String route = '/NextPage';

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Next Page'),
          ),
          body: Stack(children: [
            Container(
                alignment: Alignment.center,
                color: Colors.white,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          child: const Text('Next Page'),
                          onPressed: () {
                            Navigator.pushNamed(context, NextPage1.route);
                            breadcrumb.add(NextPage1.route);
                          }),
                      ElevatedButton(
                          child: const Text('Prev Page'),
                          onPressed: () {
                            Navigator.pop(context);
                            breadcrumb.removeLast();
                          })
                    ])),
            const Breadcrumb()
          ]),
        ),
        onWillPop: () async {
          Navigator.pop(context);
          breadcrumb.removeLast();
          return true;
        });
  }
}
