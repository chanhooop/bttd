import 'package:bttd/core/layout/default_layout.dart';
import 'package:bttd/service/home/post_add_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MatchingScreen extends StatelessWidget {
  static String routeName = 'MatchingScreen';
  const MatchingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
        title: 'Be The Top Dog',
        isdrawer: true,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.pushNamed(PostAddView.routeName);
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
