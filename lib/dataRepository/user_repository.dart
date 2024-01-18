import 'package:bttd/core/utill.dart';
import 'package:bttd/dataSource/data_source.dart';
import 'package:bttd/dataSource/model/response_model.dart';
import 'package:bttd/dataSource/model/sign_up_model.dart';

class UserRepository{
  final DataSource _dataSource = DataSource();
  bool _isEmailDoubleCheck = false; // 이메일 중복 확인
  bool _isEmailAuthenticateCheck = false; // 이메일 인증 발송 확인
  bool _isSignUp = false;

  /// 이메일 중복확인
  Future<bool> postEmailCheck(String email) async{
    _isEmailDoubleCheck = false;
    ResponseModel responseModel = await _dataSource.postEmailCheck(email);
    print('postEmailCheck data : ${responseModel.data}');
    print('postEmailCheck status : ${responseModel.status}');
    print('postEmailCheck message : ${responseModel.message}');
    if(responseModel.message == 'enable e-mail address'){
      Utils().showToast(msg: '이메일 형식에 맞지 않습니다.', isError: true);
    }
    if(responseModel.message == 'allReady have e-mail address'){
      Utils().showToast(msg: '중복된 이메일입니다.', isError: true);
    }
    if(responseModel.status == 'true' && responseModel.message == 'enable e-mail address'){
      Utils().showToast(msg: '사용 가능한 이메일입니다.', isError: false);
      _isEmailAuthenticateCheck = true;
    }
    // 리스펀스 처리
    return _isEmailDoubleCheck;
  }
  /// 이메일 인증메일 발송하기
  Future<bool> postEmailAuthenticate(String email) async{
    _isEmailAuthenticateCheck = false;
    ResponseModel responseModel = await _dataSource.postEmailAuthenticate(email);
    if(responseModel.status == 'fail'){
      Utils().showToast(msg: '인증 이메일 발송에 실패했습니다.', isError: true);
    }
    if(responseModel.status == 'true'){
      Utils().showToast(msg: '인증 이메일을 발송했습니다. 이메일을 확인하여 본인인증을 완료해주세요.', isError: false);
      _isEmailAuthenticateCheck = true;
    }
      return _isEmailAuthenticateCheck;
  }

  /// 이메일 인증 여부 확인하기
  Future<bool> getEmailAuthenticateCheck(String email) async{
    ResponseModel responseModel = await _dataSource.getEmailAuthenticateCheck(email);
    if(responseModel.status == 'true' && responseModel.message == 'valid email address'){
      Utils().showToast(msg: '이메일 인증이 확인 되었습니다.', isError: false);
      return true;
    }else{
      Utils().showToast(msg: '이메일 인증을 완료해주세요', isError: true);
      return false;
    }
  }


  /// 회원가입하기
  Future<bool> postSignUp(SignUpModel signUpModel) async{
    ResponseModel responseModel = await _dataSource.postSignUp(signUpModel);
    // 리스펀스 처리
    return _isSignUp;
  }

}