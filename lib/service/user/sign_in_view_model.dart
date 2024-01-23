import 'package:bttd/dataRepository/user_repository.dart';
import 'package:bttd/dataSource/model/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_in_view_model.freezed.dart';

/// 뷰 모델
@freezed
class SignInViewModel with _$SignInViewModel {
  factory SignInViewModel({
    UserModel? userModel,
    bool? isLogined,
    TextEditingController? emailTxtCtr,
    TextEditingController? pwTxtCtr,
  }) = _SignInViewModel;
}

/// 프로바이더
final SignInViewProvider =
    StateNotifierProvider<SignInViewNotifier, SignInViewModel>(
        (ref) => SignInViewNotifier(SignInViewModel()));

/// 노티파이어
class SignInViewNotifier extends StateNotifier<SignInViewModel> {
  SignInViewNotifier(super._state) {
    state = state.copyWith(
        isLogined: false,
        emailTxtCtr: TextEditingController(),
        pwTxtCtr: TextEditingController());
  }

  signIn() async {
    UserModel userModel = UserModel();
    await UserRepository()
        .postSignIn(state.emailTxtCtr!.text, state.pwTxtCtr!.text)
        .then((isLoginSuccess) async {
      print('then value : ${isLoginSuccess}');
      if (isLoginSuccess) {
        // 내졍보 가져오기 로직
        userModel = await UserRepository().getMyInfo(state.emailTxtCtr!.text);
      }
      state = state.copyWith(isLogined: isLoginSuccess, userModel: userModel);
    });
  }
}
