import 'package:bttd/core/widget/drawer_widget.dart';
import 'package:flutter/material.dart';

class DefaultLayout extends StatelessWidget {
  const DefaultLayout({
    required this.title,
    required this.body,
    this.leading,
    this.actions,
    this.floatingActionButton,
    this.isdrawer = false,
    Key? key,
  }) : super(key: key);

  final String title;
  final Widget body;
  final Widget? leading;
  final bool? isdrawer;
  final List<Widget>? actions;
  final FloatingActionButton? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double appBarHeight = AppBar().preferredSize.height;
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final double heightWithoutAppBar =
        screenHeight - appBarHeight - statusBarHeight;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: leading,
        actions: actions,
      ),
      floatingActionButton: floatingActionButton,
      drawer: isdrawer! ? DrawerWidget() : null,
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: heightWithoutAppBar,
          // color: Colors.amberAccent,
          child: body),
    );
  }
}
