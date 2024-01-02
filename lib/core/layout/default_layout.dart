import 'package:flutter/material.dart';

class DefaultLayout extends StatelessWidget {
  const DefaultLayout({
    required this.title,
    required this.body,
    this.leading,
    this.actions,
    this.drawer,
    Key? key,
  }) : super(key: key);

  final String title;
  final Widget body;
  final Widget? leading;
  final Widget? drawer;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          leading: leading,
          actions: actions,
        ),
        drawer: drawer,
        body: body);
  }
}
