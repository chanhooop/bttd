import 'package:bttd/config/theme/text_style.dart';
import 'package:bttd/core/layout/default_layout.dart';
import 'package:bttd/core/widget/custom_text_form_field.dart';
import 'package:bttd/service/home/home_screen.dart';
import 'package:bttd/service/user/sign_in_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SignInView extends ConsumerWidget {
  static String routeName = 'SignInScreen';
  const SignInView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final SignInViewModel state = ref.watch(SignInViewProvider);

    return GestureDetector(
      onTap: () {
        print('로그인 화면 on tap');
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
                  Text(
                    '이메일 : ',
                    style: INPUT_TEXTSTYLE,
                  ),
                  Expanded(
                      child: CustomTextFormField(
                    textEditingController: state.emailTxtCtr,
                  )),
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
                  )),
                ],
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    ref.read(SignInViewProvider.notifier).signIn().then((isLogined) {
                      if(isLogined){
                        context.goNamed(HomeScreen.routeName);
                      }
                    });
                  },
                  child: Text('로그인'),
                ),
              ),
              Text(state.isLogined.toString()),
              if (state.isLogined!) ...[
                Text(state.userModel!.user_id!.toString()),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
