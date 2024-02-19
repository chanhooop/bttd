import 'package:bttd/core/layout/default_layout.dart';
import 'package:bttd/core/utills.dart';
import 'package:bttd/service/home/post_add_view.dart';
import 'package:bttd/service/user/sign_in_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../user/sign_in_view.dart';

class MatchingView extends ConsumerWidget {
  static String routeName = 'MatchingView';

  const MatchingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool loginState = ref.watch(SignInViewProvider).isLogined ?? false;

    return DefaultLayout(
        title: 'Be The Top Dog',
        isdrawer: true,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print(loginState);
            if (loginState) {
              context.pushNamed(PostAddView.routeName);
            } else {
              Utils().customShowDialog(
                context: context,
                title: '로그인 후 이용해주세요.',
                actions: [
                  TextButton(
                      onPressed: () {
                        context.pop();
                        context.pushNamed(SignInView.routeName);
                      },
                      child: Text('로그인')),
                  TextButton(
                      onPressed: () {
                        context.pop();
                      },
                      child: Text('닫기')),
                ],
              );
            }
          },
          child: Icon(
            Icons.add,
            size: 30,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0),
          child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  MatchingListTile(
                    title: '제목',
                    context: '내용내용',
                    dateTime: '0000.00.00 00:00',
                  ),
                  MatchingListTile(
                    title: '제목',
                    context: '내용내용',
                    dateTime: '0000.00.00 00:00',
                  ),
                ],
              )),
        ));
  }
}

class MatchingListTile extends StatelessWidget {
  const MatchingListTile(
      {Key? key,
      required this.title,
      required this.context,
      required this.dateTime})
      : super(key: key);
  final String title;
  final String context;
  final String dateTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 3),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 120,
        decoration: BoxDecoration(
          color: Colors.purple.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${title}'),
                      Text(
                        '${context}',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text('경기날짜 : ${dateTime}'),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('승인하기'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
