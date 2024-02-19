import 'package:bttd/core/utills.dart';
import 'package:bttd/dataRepository/user_repository.dart';
import 'package:bttd/dataRepository/user_secure_strage.dart';
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
  SignInViewNotifier(super._state) {}

  final UserRepository _userRepository = UserRepository();

  /// SignInViewNotifier 초기화 & 자동로그인
  Future<void> init() async {
    print('SignInViewNotifier 초기화 실행');
    SignInViewModel _signInViewModel;
    _signInViewModel = await _userRepository.autoLogin();
    if (_signInViewModel.isLogined ?? false) {
      state = _signInViewModel;
      Utils().showToast(
          msg: '자동 로그인 되었습니다.',
          isError: false,
          toastGravity: ToastGravity.BOTTOM);
    } else {
      state = state.copyWith(isLogined: false);
    }
    state = state.copyWith(
        emailTxtCtr: TextEditingController(),
        pwTxtCtr: TextEditingController()
    );
  }

  // 로그인
  Future<bool> signIn() async {
    UserModel userModel = UserModel();

    if(state.emailTxtCtr?.text == '' || state.pwTxtCtr?.text == ''){
      Utils().showToast(msg: '이메일과 비밀번호를 작성해주세요.', isError: true);
      return false;
    }else {
      bool isLogined = await _userRepository.postSignIn(
          state.emailTxtCtr?.text ?? '', state.pwTxtCtr?.text ?? '');
      if (isLogined) {
        // 내졍보 가져오기 로직
        userModel = await UserRepository().getMyInfo(state.emailTxtCtr!.text);
        state = state.copyWith(
            isLogined: isLogined,
            userModel: userModel,
            emailTxtCtr: TextEditingController(),
            pwTxtCtr: TextEditingController());
        Utils().showToast(
            msg: '로그인 성공', isError: false, toastGravity: ToastGravity.CENTER);
      } else {
        state = state.copyWith(isLogined: isLogined, userModel: userModel);
        Utils().showToast(
            msg: '로그인 실패', isError: true, toastGravity: ToastGravity.CENTER);
      }
      return isLogined;
    }
  }

  // 로그아웃
  Future<void> signOut() async {
    print('로그아웃');
    UserSecureStorage _userSecureStorage = UserSecureStorage();
    state = state.copyWith(
      isLogined: false,
      userModel: UserModel(),
    );
    try {
      await _userSecureStorage.deleteLoginData(key: 'isLogined');
      await _userSecureStorage.deleteLoginData(key: 'userId');
      await _userSecureStorage.deleteLoginData(key: 'accessToken');
      await _userSecureStorage.deleteLoginData(key: 'refreshToken');
      Utils().showToast(msg: '로그아웃 되었습니다.', isError: false);
    } catch (e) {
      print('로그아웃 error : $e');
    }
  }
}
