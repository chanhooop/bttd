import 'dart:io';

import 'package:bttd/core/layout/default_layout.dart';
import 'package:bttd/core/widget/custom_network_image_widget.dart';
import 'package:bttd/core/widget/custom_text_form_field.dart';
import 'package:bttd/dataSource/model/user_model.dart';
import 'package:bttd/service/user/my_info_view_model.dart';
import 'package:bttd/service/user/sign_in_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class MyInfoView extends ConsumerWidget {
  static String routeName = 'MyInfoView';

  const MyInfoView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    MyInfoViewModel myInfoViewModel = ref.watch(MyInfoViewProvider);
    final SignInViewModel signInViewModel = ref.watch(SignInViewProvider);

    UserModel userModel = signInViewModel.userModel ?? UserModel();

    var imagePicker = ImagePicker();
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
                    child:
                    myInfoViewModel.selectedImage == null ? CustomNetworkImageWidget(
                      // Todo : 저장되어 있는 유저 이메일
                      imgurl: userModel.photo ?? '',
                      assetImgPath: 'assets/images/profile_image.jpeg',
                    ) : Image(image: FileImage(File(myInfoViewModel.selectedImage!.path)))
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () async{
                        var image = await imagePicker.pickImage(source: ImageSource.gallery);
                      ref.read(MyInfoViewProvider.notifier).changeImage(image);
                    },
                    child: Text('프로필사진 변경'),
                  ),
                  _infoRow(title: '이메일', hintText: userModel.user_id ?? '', onPressed: () {}),
                  _infoRow(title: '닉네임', hintText: userModel.user_name ?? '',onPressed: () {}, buttonTitle: '수정하기'),
                  _infoRow(title: '나이', hintText: userModel.user_age ?? '',onPressed: () {}, buttonTitle: '수정하기'),
                  _infoRow(title: '무게', hintText: '${userModel.user_weight}kg' ?? '',onPressed: () {}, buttonTitle: '수정하기'),
                  _infoRow(title: '전적', hintText: '${userModel.user_win}승 ${userModel.user_lose}패' ?? '',onPressed: () {}),
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
    required String hintText,
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
              hintText: hintText,
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
