import 'package:bttd/dataRepository/user_repository.dart';
import 'package:bttd/dataSource/model/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_view_model.freezed.dart';

@freezed
class SignInViewModel with _$SignInViewModel {
  factory SignInViewModel({
    UserModel? userModel,
    TextEditingController? emailTxtCtr,
    TextEditingController? pwTxtCtr,
}) = _SignInViewModel;
}

final SignInViewProvider = StateNotifierProvider<SignInViewNotifier, SignInViewModel>((ref) => SignInViewNotifier(SignInViewModel()));

class SignInViewNotifier extends StateNotifier<SignInViewModel> {
  SignInViewNotifier(super._state){
    state = state.copyWith(emailTxtCtr: TextEditingController(), pwTxtCtr: TextEditingController());
  }

  signIn() async{

    bool isLoginSuccess = await UserRepository().postSignIn(state.emailTxtCtr!.text, state.pwTxtCtr!.text);
  }

}
