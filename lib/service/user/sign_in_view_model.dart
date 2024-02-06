import 'package:bttd/core/utill.dart';
import 'package:bttd/dataRepository/user_repository.dart';
import 'package:bttd/dataSource/model/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
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

 final UserRepository _userRepository = UserRepository();

  // 로그인
  Future<bool> signIn() async {
    UserModel userModel = UserModel();
    bool isLogined = await _userRepository
        .postSignIn(state.emailTxtCtr!.text, state.pwTxtCtr!.text);
    if (isLogined) {
      // 내졍보 가져오기 로직
      userModel = await UserRepository().getMyInfo(state.emailTxtCtr!.text);
      state = state.copyWith(isLogined: isLogined, userModel: userModel, emailTxtCtr: TextEditingController(), pwTxtCtr: TextEditingController());
      Utils().showToast(msg: '로그인 성공', isError: false,toastGravity: ToastGravity.CENTER);
    }else{
      state = state.copyWith(isLogined: isLogined, userModel: userModel);
      Utils().showToast(msg: '로그인 실패', isError: true, toastGravity: ToastGravity.CENTER);
    }
    return isLogined;
  }

  // 자동로그인
  Future<bool> autoSignIn() async{
    await _userRepository.autoLogin();

    return true;
  }
}
