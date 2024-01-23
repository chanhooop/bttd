
import 'package:bttd/core/utill.dart';
import 'package:bttd/dataRepository/user_secure_strage.dart';
import 'package:bttd/dataSource/data_source.dart';
import 'package:bttd/dataSource/model/response_model.dart';
import 'package:bttd/dataSource/model/sign_up_model.dart';
import 'package:bttd/dataSource/model/user_model.dart';
import 'package:dio/dio.dart';

class UserRepository {
  final DataSource _dataSource = DataSource();
  bool _isEmailDoubleCheck = false; // 이메일 중복 확인
  bool _isEmailAuthenticateCheck = false; // 이메일 인증 발송 확인
  bool _isSignUp = false;

  /// 로그인 하기
  Future<bool> postSignIn(String email, String pw) async {
    ResponseModel responseModel = await _dataSource.postSignIn(email, pw);
    if (responseModel.status == "true") {
      Map<String, dynamic> json;
      print('로그인 성공');
      json = responseModel.data as Map<String, dynamic>;
      String isLogined = 'true';
      String accessToken = json['accessToken'];
      String refreshToken = json['refreshToken'];
      // 토큰 저장 로직
      await UserSecureStorage().writeLoginData(
          isLogined: isLogined,
          userId: email,
          accessToken: accessToken,
          refreshToken: refreshToken);
      return true;
    } else {
      print('로그인 실패');
      print('status : ${responseModel.status}');
      print('message : ${responseModel.message}');
      print('data : ${responseModel.data}');
      return false;
    }
  }

  /// 내정보 가져오기 로직
  Future<UserModel> getMyInfo(String email) async {
    ResponseModel responseModel = await _dataSource.getMyInfo(email);
    UserModel userModel = UserModel.fromJson(responseModel.data!);
    return userModel;
  }

  /// 자동로그인
  Future<bool> autoLogin() async{
    String? isLogined = await UserSecureStorage().readLoginData(key: 'isLogined');
    if(isLogined == 'true'){
      print('auto Login true');
      // todo : 자동로그인 로직 추가
      return true;
    } else{
      print('auto Login false');
    return false;
    }
  }

  /// 이메일 중복확인
  Future<bool> postEmailCheck(String email) async {
    _isEmailDoubleCheck = false;
    ResponseModel responseModel = await _dataSource.postEmailCheck(email);
    print('postEmailCheck data : ${responseModel.data}');
    print('postEmailCheck status : ${responseModel.status}');
    print('postEmailCheck message : ${responseModel.message}');
    if (responseModel.message == 'enable e-mail address') {
      Utils().showToast(msg: '이메일 형식에 맞지 않습니다.', isError: true);
    }
    if (responseModel.message == 'allReady have e-mail address') {
      Utils().showToast(msg: '중복된 이메일입니다.', isError: true);
    }
    if (responseModel.status == 'true' &&
        responseModel.message == 'enable e-mail address') {
      Utils().showToast(msg: '사용 가능한 이메일입니다.', isError: false);
      _isEmailAuthenticateCheck = true;
    }
    // 리스펀스 처리
    return _isEmailDoubleCheck;
  }

  /// 이메일 인증메일 발송하기
  Future<bool> postEmailAuthenticate(String email) async {
    _isEmailAuthenticateCheck = false;
    ResponseModel responseModel =
        await _dataSource.postEmailAuthenticate(email);
    if (responseModel.status == 'fail') {
      Utils().showToast(msg: '인증 이메일 발송에 실패했습니다.', isError: true);
    }
    if (responseModel.status == 'true') {
      Utils().showToast(
          msg: '인증 이메일을 발송했습니다. 이메일을 확인하여 본인인증을 완료해주세요.', isError: false);
      _isEmailAuthenticateCheck = true;
    }
    return _isEmailAuthenticateCheck;
  }

  /// 이메일 인증 여부 확인하기
  Future<bool> getEmailAuthenticateCheck(String email) async {
    ResponseModel responseModel =
        await _dataSource.getEmailAuthenticateCheck(email);
    if (responseModel.status == 'true' &&
        responseModel.message == 'valid email address') {
      Utils().showToast(msg: '이메일 인증이 확인 되었습니다.', isError: false);
      return true;
    } else {
      Utils().showToast(msg: '이메일 인증을 완료해주세요', isError: true);
      return false;
    }
  }

  /// 회원가입하기
  Future<bool> postSignUp(SignUpModel signUpModel) async {
    ResponseModel responseModel = await _dataSource.postSignUp(signUpModel);
    // 리스펀스 처리
    return _isSignUp;
  }


  /// 사진 업로드 하기
  Future<bool> postImageUpload(String imagePath, String userId) async {
    print('로컬 postImageUpload');
    try {
      Map<String, dynamic> form = {
        'file': MultipartFile.fromFileSync(imagePath),
        'user_id': userId,
      };
      print('로컬 postImageUpload 2 ');

      var formData = FormData.fromMap(form);
      print('로컬 postImageUpload 3 ');
      ResponseModel responseModel = await _dataSource.postImageUpload(formData);
      print('postImageUpload : ${responseModel.message} ');
      return true;
    } catch (e) {
      print('postImageUpload Error : ${e}');
      return false;
    }
  }
}
