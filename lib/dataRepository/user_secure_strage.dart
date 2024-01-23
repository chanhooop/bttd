import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UserSecureStorage {
  static const storage = FlutterSecureStorage();

  /// 로그인 상태, 엑세스토큰, 리프레시토큰 작성
  writeLoginData(
      {String? isLogined,
      String? userId,
      String? accessToken,
      String? refreshToken}) async {
    isLogined ??= await storage.read(key: 'isLogined');
    isLogined ??= await storage.read(key: 'userId');
    accessToken ??= await storage.read(key: 'accessToken');
    refreshToken ??= await storage.read(key: 'refreshToken');

    await storage.write(key: 'isLogined', value: isLogined);
    await storage.write(key: 'userId', value: userId);
    await storage.write(key: 'accessToken', value: accessToken);
    await storage.write(key: 'refreshToken', value: refreshToken);
  }

  /// 로그인 상태, 엑세스토큰, 리프레시토큰 가져오기
  readLoginData({required String key}) async {
     String? returnStr = await storage.read(key: key);
    return returnStr;
  }

  /// 로그인 상태, 엑세스토큰, 리프레시토큰 삭제
  deleteLoginData({required String key}) {
    storage.delete(key: key);
  }

  /// 헤더 토큰 만들기
  Future<Map<String, dynamic>> getHeaderToken() async {
    String? accesToken = await storage.read(key: 'accessToken');
    Map<String, dynamic> tokenData = {'Authorization': 'bearer $accesToken'};
    return tokenData;
  }
}
