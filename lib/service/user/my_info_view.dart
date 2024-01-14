import 'package:bttd/core/layout/default_layout.dart';
import 'package:bttd/core/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class MyInfoView extends StatelessWidget {
  static String routeName = 'MyInfoView';

  const MyInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: '내 정보',
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        physics: AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.amber,
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('프로필사진 변경'),
                  ),
                  _infoRow(title: '이메일', onPressed: () {}),
                  _infoRow(title: '닉네임', onPressed: () {}, buttonTitle: '수정하기'),
                  _infoRow(title: '나이', onPressed: () {}, buttonTitle: '수정하기'),
                  _infoRow(title: '무게', onPressed: () {}, buttonTitle: '수정하기'),
                  _infoRow(title: '전적', onPressed: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _infoRow({
    required String title,
    TextEditingController? textEditingController,
    String? buttonTitle,
    required VoidCallback? onPressed,
  }) {
    return Row(
      children: [
        Text('$title : '),
        Expanded(
          child: SizedBox(
            height: 30,
            child: CustomTextFormField(
              textEditingController: textEditingController,
            ),
          ),
        ),
        SizedBox(width: 10),
        if (buttonTitle != null) ...[
          ElevatedButton(
            onPressed: onPressed,
            child: Text('수정하기'),
          ),
        ]
      ],
    );
  }
}
