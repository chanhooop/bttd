import 'package:bttd/core/dio.dart';
import 'package:bttd/dataSource/model/board_model.dart';
import 'package:bttd/dataSource/model/response_model.dart';
import 'package:bttd/dataSource/model/sign_up_model.dart';
import 'package:dio/dio.dart';

class DataSource {
  /// 이메일 중복확인
  Future<ResponseModel> postEmailCheck(String email) async{
      Response response = await dio.post('/api/emailTrue', data: {'user_id' : '$email'});
      return ResponseModel.fromJson(response.data);
    }
  /// 이메일 인증메일 발송하기
  Future<ResponseModel> postEmailAuthenticate(String email) async{
    Response response = await dio.post('/api/authenticateEmail', data: {'user_id' : '$email'});
    return ResponseModel.fromJson(response.data);
  }

  /// 회원가입하기
  Future<ResponseModel> postSignUp(SignUpModel signUpModel) async{
    Response response = await dio.post('/api/user', data: signUpModel.toJson());
    return ResponseModel.fromJson(response.data);
  }
  
  /// 게시글 전체 리스트 가져오기
  Future<BoardModelList> getBoardList() async {
    print('DataSource => getBoardList');
    Response _response = await dio.get('/api/getAllBoard');
    return BoardModelList.fromJson(_response.data);
  }
}
