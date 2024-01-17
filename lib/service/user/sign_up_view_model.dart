import 'package:bttd/dataRepository/user_repository.dart';
import 'package:bttd/dataSource/model/sign_up_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'sign_up_view_model.freezed.dart';

@freezed
class SignUpViewModel with _$SignUpViewModel {
  factory SignUpViewModel({
    SignUpModel? signUpModel,
    TextEditingController? emailTxtCtr,
    TextEditingController? pwTxtCtr,
    TextEditingController? pwCheckTxtCtr,
    TextEditingController? nickNameTxtCtr,
    TextEditingController? ageTxtCtr,
    TextEditingController? weightTxtCtr,
    bool? isCheckedEmail,
    bool? isAuthenticateEmail,

  }) = _SignUpViewModel;

}

final SignUpViewProvider =
    StateNotifierProvider<SignUpViewNotifier, SignUpViewModel>((ref) => SignUpViewNotifier(SignUpViewModel()));

class SignUpViewNotifier extends StateNotifier<SignUpViewModel> {
  SignUpViewNotifier(super._state){
    initData();
  }

  final UserRepository userRepository = UserRepository();

  Future<void> initData() async{
    state = state.copyWith(
      emailTxtCtr: TextEditingController(),
      pwTxtCtr: TextEditingController(),
      pwCheckTxtCtr: TextEditingController(),
      nickNameTxtCtr: TextEditingController(),
      ageTxtCtr: TextEditingController(),
      weightTxtCtr: TextEditingController(),
      isAuthenticateEmail:false,
      isCheckedEmail:false,
    );
  }

  /// 이메일 중복확인
  Future<void> emailDoubleCheck() async{
    bool response = await userRepository.postEmailCheck(state.emailTxtCtr!.text.toString());
    // 결과값에 따른 상태 처리
  }

  /// 이메일 인증메일 발송
  Future<void> emailAuthenticate() async{

  }

  /// 회원가입
  Future<void> signUp() async{
    state = state.copyWith(signUpModel: SignUpModel(
      user_id: state.emailTxtCtr!.text,
      user_name: state.nickNameTxtCtr!.text,
      user_weight: state.weightTxtCtr!.text,
      user_password: state.pwCheckTxtCtr!.text,
    ));
    bool response = await userRepository.postSignUp(state.signUpModel!);
    // 결과 값에 따른 상태 처리
  }
}
