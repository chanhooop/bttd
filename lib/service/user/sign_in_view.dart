import 'package:bttd/config/theme/text_style.dart';
import 'package:bttd/core/layout/default_layout.dart';
import 'package:bttd/core/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  static String routeName = 'SignInScreen';
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: DefaultLayout(
        title: '로그인',
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text('이메일 : ', style: INPUT_TEXTSTYLE,),
                  Expanded(child: CustomTextFormField()),
                ],
              ),
              Row(
                children: [
                  Text('비밀번호 : ', style: INPUT_TEXTSTYLE,),
                  Expanded(child: CustomTextFormField()),
                ],
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('로그인'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
