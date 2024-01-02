import 'package:bttd/core/layout/default_layout.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: '2',
      body: Center(
        child: Text('2'),
      ),
    );
  }
}
