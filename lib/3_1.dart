import 'package:bttd/core/layout/default_layout.dart';
import 'package:flutter/material.dart';

class Screen3_1 extends StatelessWidget {
  const Screen3_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: '3_1',
      body: Center(
        child: Text('Screen3_1'),
      ),
    );
  }
}
