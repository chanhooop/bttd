import 'package:bttd/core/layout/default_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostDetailView extends ConsumerWidget {
  static const routeName = 'PostDetailView';
  const PostDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const DefaultLayout(
      title: 'Be The Top Dog',
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '제목 란',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  '게시글 등록일 : 0000-00-00',
                ),
                Text(
                  '매칭 희망 날짜 : 0000-00-00',
                ),
                Text(
                  '희망지역 : 어디어디어디',
                ),
                Text(
                  '매칭 희망 날짜 : 0000-00-00',
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
