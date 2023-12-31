import 'package:bttd/service/home/matching_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/images/profile_image.jpeg')),
                  Expanded(
                      child: Center(
                          child: Text(
                    '닉네임 님!',
                    style: TextStyle(fontSize: 20),
                  ))),
                ],
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Scaffold.of(context).closeDrawer();
                  Future.delayed(Duration(milliseconds: 240)).then((value) {});
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.perm_identity,
                        size: 35,
                      ),
                      SizedBox(width: 10),
                      Text(
                        '내 정보',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Scaffold.of(context).closeDrawer();
                  Future.delayed(Duration(milliseconds: 240)).then(
                      (value) => context.goNamed(MatchingScreen.routeName));
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.table_chart_outlined,
                        size: 35,
                      ),
                      SizedBox(width: 10),
                      Text(
                        '내 일정',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Scaffold.of(context).closeDrawer();
                  Future.delayed(Duration(milliseconds: 240)).then((value) {});
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.check_circle_outline,
                        size: 35,
                      ),
                      SizedBox(width: 10),
                      Text(
                        '승부확정',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: GestureDetector(
                    onTap: () {
                      Scaffold.of(context).closeDrawer();
                      Future.delayed(Duration(milliseconds: 240))
                          .then((value) {});
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.logout),
                        Text('로그아웃'),
                      ],
                    ),
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
