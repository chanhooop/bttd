import 'package:bttd/config/theme/text_style.dart';
import 'package:bttd/core/layout/default_layout.dart';
import 'package:bttd/core/widget/custom_text_form_field.dart';
import 'package:bttd/service/user/sign_up_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpView extends ConsumerWidget {
  static String routeName = 'SignUpScreen';

  const SignUpView({Key? key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(SignUpViewProvider);
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
                    child: CustomTextFormField(
                    textEditingController: state.emailTxtCtr,
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      ref.read(SignUpViewProvider.notifier).emailDoubleCheck();
                    },
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
                    child: CustomTextFormField(
                      textEditingController: state.pwTxtCtr,
                    ),
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
                    child: CustomTextFormField(
                      textEditingController: state.pwCheckTxtCtr,
                    ),
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
                    child: CustomTextFormField(
                      textEditingController: state.nickNameTxtCtr,
                    ),
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
                    child: CustomTextFormField(
                      textEditingController: state.ageTxtCtr,
                    ),
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
                    child: CustomTextFormField(
                      textEditingController: state.weightTxtCtr,
                    ),
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
