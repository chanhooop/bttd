import 'package:bttd/core/layout/default_layout.dart';
import 'package:bttd/service/home/home_screen_viewModel.dart';
import 'package:bttd/service/home/post_detail_view.dart';
import 'package:bttd/service/home/post_detail_viewModel.dart';
import 'package:bttd/service/user/sign_in_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends ConsumerWidget {
  static const routeName = "HomeScreen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(SignInViewProvider.notifier).init();
    final state = ref.watch(homeScreenProvider);
    return DefaultLayout(
        title: 'Be The Top Dog',
        isdrawer: true,
        body: state.listDataError
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text('데이터 송수신 에러'),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        context.pushNamed(PostDetailView.routeName);
                      },
                      child: Text('디테일 뷰로 이동'))
                ],
              )
            : RefreshIndicator(
                onRefresh: () async {
                  await ref.read(homeScreenProvider.notifier).initData();
                },
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  child: Column(
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
                                    .goDetailView(context, postId: e.post_id);
                                // context.pushNamed(PostDetailView.routeName,
                                //     extra: e.post_id);
                              },
                              leading: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.green.withOpacity(0.5)),
                                child: Center(
                                  child: e.user_id == null
                                      ? Text('모집중')
                                      : Text(e.user_id.toString()),
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
                                      child: Text(
                                          e.comment_count.toString()), // 댓글 수
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
                  ),
                ),
              ));
  }
}
