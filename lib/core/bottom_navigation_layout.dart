import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavigationLayout extends StatelessWidget {
  const BottomNavigationLayout({
    required this.navigationShell,
    this.actions,
    Key? key,
  }) : super(key: key);

  final StatefulNavigationShell navigationShell;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          navigationShell.goBranch(index);
        },
        backgroundColor: const Color(0xffe0b9f6),
        currentIndex: navigationShell.currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.one_k), label: '1'),
          BottomNavigationBarItem(icon: Icon(Icons.two_k), label: '2'),
          BottomNavigationBarItem(icon: Icon(Icons.three_k), label: '3'),
        ],
      ),
    );
  }
}
