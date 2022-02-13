import 'package:flutter/material.dart';
import 'package:my_bread_crumb/home.dart';

List<String> breadcrumb = [HomePage.route];

class Breadcrumb extends StatelessWidget {
  Breadcrumb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 40,
        width: double.infinity,
        color: Colors.white,
        child: Row(
            children: breadcrumb.map((e) => BreadcrumbItem(name: e)).toList()),
      );
}

class BreadcrumbItem extends StatefulWidget {
  String name;

  BreadcrumbItem({Key? key, required this.name}) : super(key: key);

  @override
  State<StatefulWidget> createState() => BreadcrumbItemState();
}

class BreadcrumbItemState extends State<BreadcrumbItem> {
  Color color = Colors.blue;
  bool onIt = false;

  @override
  Widget build(BuildContext context) => Row(children: [
        Text((widget.name == '/') ? '' : '/'),
        GestureDetector(
            onTap: () {
              while (breadcrumb.last != widget.name) {
                setState(() {
                  Navigator.pop(context);
                  breadcrumb.removeLast();
                });
              }
            },
            child: Text(
                (widget.name == '/') ? 'Home' : widget.name.substring(1),
                style: TextStyle(
                    letterSpacing: .3,
                    color: widget.name == breadcrumb.last
                        ? Colors.black45
                        : Colors.blue,
                    decoration: onIt
                        ? widget.name == breadcrumb.last
                            ? TextDecoration.none
                            : TextDecoration.underline
                        : TextDecoration.none)))
      ]);
}
