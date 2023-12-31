import 'package:bttd/core/default_layout.dart';
import 'package:bttd/dataSource/model/board_model.dart';
import 'package:bttd/service/home/home_screen_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  static const routeName = "/HomeScreen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeScreenProvider);
    return DefaultLayout(
        title: 'BTTD',
        body: Column(
          children: [
            if (state.list == null) ...[
              Center(
                child: CircularProgressIndicator(),
              )
            ],
            if (state.list != null) ...[
              ...state.list!.data!.map((e) => ListTile(
                    title: Text(e.post_title ?? ''),
                    subtitle: Text(e.post_context ?? ''),
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
