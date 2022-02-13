import 'package:flutter/material.dart';
import 'package:my_bread_crumb/bread_crumb.dart';

class NextPage1 extends StatefulWidget {
  NextPage1({Key? key}) : super(key: key);
  static String route = '/NextPage1';

  @override
  State<NextPage1> createState() => _NextPage1State();
}

class _NextPage1State extends State<NextPage1> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Next Page1'),
          ),
          body: Stack(children: [
            Container(
                alignment: Alignment.center,
                color: Colors.white,
                child: ElevatedButton(
                    child: const Text('Prev Page'),
                    onPressed: () {
                      Navigator.pop(context);
                      breadcrumb.removeLast();
                    })),
            Breadcrumb()
          ]),
        ),
        onWillPop: () async {
          Navigator.pop(context);
          breadcrumb.removeLast();
          return true;
        });
  }
}
