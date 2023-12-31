import 'package:bttd/core/default_layout.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: '3',
      body: Center(
        child: Text('3'),
      ),
    );
  }
}
