import 'package:bttd/core/layout/default_layout.dart';
import 'package:bttd/service/home/home_screen_viewModel.dart';
import 'package:bttd/service/home/post_detail_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  static const routeName = "HomeScreen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeScreenProvider);
    return DefaultLayout(
        title: 'Be The Top Dog',
        leading: Icon(Icons.menu),
        body: state.listDataError
            ? Container(
                child: Center(child: Text('데이터 송수신 에러')),
              )
            : Column(
                children: [
                  if (state.list == null) ...[
                    Center(
                      child: CircularProgressIndicator(),
                    )
                  ],
                  if (state.list != null) ...[
                    ...state.list!.data!.map((e) => ListTile(
                          onTap: () {
                            ref
                                .read(postDetailViewProvider.notifier)
                                .goDetailView(context, e);
                          },
                          leading: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.green.withOpacity(0.5)),
                            child: Center(
                              child: Text('모집중'),
                            ),
                          ),
                          title: Text(
                            e.post_title ?? '',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          subtitle: Text(
                            e.post_context ?? '',
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: SizedBox(
                            width: 40,
                            height: 20,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.comment,
                                  size: 17,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                  child: Text('2'), // 댓글 수
                                ),
                              ],
                            ),
                          ),
                        )),
                    ElevatedButton(
                      onPressed: () {
                        ref.read(homeScreenProvider.notifier).test();
                      },
                      child: Text('테스트 버튼'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        ref.read(homeScreenProvider.notifier).test2();
                      },
                      child: Text('테스트 버튼2'),
                    ),
                  ]
                ],
              ));
  }
}
