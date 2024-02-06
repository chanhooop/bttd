import 'dart:developer';

import 'package:bttd/core/dio.dart';
import 'package:bttd/dataRepository/user_secure_strage.dart';
import 'package:bttd/dataSource/model/board_model.dart';
import 'package:bttd/dataSource/model/response_model.dart';
import 'package:bttd/dataSource/model/sign_up_model.dart';
import 'package:dio/dio.dart';

class DataSource {
  /// 이메일 중복확인
  Future<ResponseModel> postEmailCheck(String email) async {
    Response response =
        await dio.post('/api/emailTrue', data: {'user_id': '$email'});
    return ResponseModel.fromJson(response.data);
  }

  /// 이메일 인증메일 발송하기
  Future<ResponseModel> postEmailAuthenticate(String email) async {
    Response response =
        await dio.post('/api/authenticateEmail', data: {'user_id': '$email'});
    return ResponseModel.fromJson(response.data);
  }

  /// 이메일 인증메일 발송하기
  Future<ResponseModel> getEmailAuthenticateCheck(String email) async {
    Response response = await dio
        .get('/api/userEmailConfirm', queryParameters: {"user_id": email});
    return ResponseModel.fromJson(response.data);
  }

  /// 회원가입하기
  Future<ResponseModel> postSignUp(SignUpModel signUpModel) async {
    Response response = await dio.post('/api/user', data: signUpModel.toJson());
    return ResponseModel.fromJson(response.data);
  }

  /// 게시글 전체 리스트 가져오기
  Future<BoardModelList> getBoardList() async {
    print('DataSource => getBoardList');
    Response _response = await dio.get('/api/getAllBoard');
    return BoardModelList.fromJson(_response.data);
  }

  /// 사진 업로드 하기
  Future<ResponseModel> postImageUpload(FormData formData) async {
    /// Todo :  서버 수정 뒤 고치기
    ResponseModel _responseModel = ResponseModel();
    dio.options.contentType = 'multipart/form-data';
    print('서버 postImageUpload');
    Response response = await dio.post('/upload',
        data: formData,
        options: Options().copyWith(contentType: 'multipart/form-data'));
    // return ResponseModel.fromJson(responseModel);
    print(response);
    return _responseModel;
  }

  /// 정보 수정하기
  Future<ResponseModel> postUserDataFix(FormData formData) async {
    /// Todo :  서버 수정 뒤 고치기
    ResponseModel _responseModel = ResponseModel();
    dio.options.contentType = 'multipart/form-data';
    print('서버 postImageUpload');
    Response response = await dio.post('/upload',
        data: formData,
        options: Options().copyWith(contentType: 'multipart/form-data'));
    // return ResponseModel.fromJson(responseModel);
    print(response);
    return _responseModel;
  }

  /// 로그인 하기
  Future<ResponseModel> postSignIn(String email, String pw) async {
    print('${email}');
    print('${pw}');
    Response response = await dio
        .post('/api/login', data: {'user_id': email, 'user_password': pw});
    ResponseModel responseModel = ResponseModel.fromJson(response.data);
    return responseModel;
  }

  /// 내 정보 가져오기
  Future<ResponseModel> getMyInfo(String email) async {
    Map<String, dynamic> tokenData = await UserSecureStorage().getHeaderToken();
    Response response = await dio.get('/api/userDetails?user_id=${email}',
        options: Options(headers: tokenData));
    ResponseModel responseModel = ResponseModel.fromJson(response.data);
    return responseModel;
  }

  /// 토큰 유효 검사
  Future<ResponseModel> postTokenCheck(String token) async {
    Response response =
        await dio.get('/api/tokenEnable', data: {'token': token});
    ResponseModel responseModel = ResponseModel.fromJson(response.data);
    log('토큰 유효 검사 : ${responseModel}');
    return responseModel;
  }
}
