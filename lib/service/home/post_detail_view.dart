import 'package:bttd/core/layout/default_layout.dart';
import 'package:bttd/core/widget/custom_network_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostDetailView extends ConsumerWidget {
  static const routeName = 'PostDetailView';

  const PostDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultLayout(
      title: 'Be The Top Dog',
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black.withOpacity(0.2)),
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
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
                    SizedBox(height: 20),
                    Text(
                      '매칭 희망 날짜 : 0000-00-00',
                    ),
                    Text(
                      '희망지역 : 어디어디어디',
                    ),
                    Text(
                      '나이:',
                    ),
                    Text(
                      '무게:',
                    ),
                    Text(
                      '경력:',
                    ),
                    Text(
                      '전적:',
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.red,
                      child: Text(
                        '모집 내용입니다. dfsdfdfdfddfsdfsdf',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Row(
              children: [
                Icon(
                  Icons.comment,
                  size: 20,
                ),
                SizedBox(width: 5),
                Text('3'),
                SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Icon(Icons.add_box_outlined),
                      SizedBox(width: 5),
                      Text('신청글 남기기'),
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: CustomNetworkImageWidget(
                  imgurl: '',
                  assetImgPath: 'assets/images/profile_image.jpeg',
                ),
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Text('dfdfdfdfdfdfdfdfksjdflkjdslkfjlksdjflkdsjk'),
              )),
              SizedBox(
                width: 50,
                child: IconButton(
                  icon: Icon(
                    Icons.check_box_outlined,
                    size: 35,
                  ),
                  onPressed: () {},
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
