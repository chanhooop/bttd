import 'package:bttd/core/layout/default_layout.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: '1',
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.pink,
        child: Center(
          child: ElevatedButton(
            onPressed: () => context.go('/3/3_1'),
            child: Text('to 3_1'),
          ),
        ),
      ),
    );
  }
}
