import 'package:bttd/dataSource/data_source.dart';
import 'package:bttd/dataSource/model/response_model.dart';
import 'package:bttd/dataSource/model/sign_up_model.dart';

class UserRepository{
  final DataSource _dataSource = DataSource();
  bool _isEmailDoubleCheck = false;
  bool _isEmailAuthenticateCheck = false; // 이메일 인증 확인
  bool _isSignUp = false;

  /// 이메일 중복확인
  Future<bool> postEmailCheck(String email) async{
    _isEmailDoubleCheck = false;
    ResponseModel responseModel = await _dataSource.postEmailCheck(email);
    // 리스펀스 처리
    return _isEmailDoubleCheck;
  }
  /// 이메일 인증메일 발송하기
  Future<void> postEmailAuthenticate(String email) async{
    ResponseModel responseModel = await _dataSource.postEmailAuthenticate(email);
  }


  /// 회원가입하기
  Future<bool> postSignUp(SignUpModel signUpModel) async{
    ResponseModel responseModel = await _dataSource.postSignUp(signUpModel);
    // 리스펀스 처리
    return _isSignUp;
  }

}