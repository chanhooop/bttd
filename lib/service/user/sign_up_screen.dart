import 'package:bttd/config/theme/text_style.dart';
import 'package:bttd/core/layout/default_layout.dart';
import 'package:bttd/core/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = 'SignUpScreen';

  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: '회원가입',
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    '이메일 : ',
                    style: INPUT_TEXTSTYLE,
                  ),
                  Expanded(
                    child: CustomTextFormField(),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('중복확인'),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '비밀번호 : ',
                    style: INPUT_TEXTSTYLE,
                  ),
                  Expanded(
                    child: CustomTextFormField(),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '비밀번호 확인 : ',
                    style: INPUT_TEXTSTYLE,
                  ),
                  Expanded(
                    child: CustomTextFormField(),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '닉네입 : ',
                    style: INPUT_TEXTSTYLE,
                  ),
                  Expanded(
                    child: CustomTextFormField(),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '나이 : ',
                    style: INPUT_TEXTSTYLE,
                  ),
                  Expanded(
                    child: CustomTextFormField(),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '무게 : ',
                    style: INPUT_TEXTSTYLE,
                  ),
                  Expanded(
                    child: CustomTextFormField(),
                  ),
                ],
              ),
              SizedBox(
                height: 50
              ),
              ElevatedButton(
                onPressed: () {  },
                child: Text('회원가입'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
