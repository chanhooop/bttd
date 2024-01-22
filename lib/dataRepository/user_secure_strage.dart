import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UserSecureStorage {
  static const storage = FlutterSecureStorage();

  writeLoginData(
      {String? isLogined,
      String? accessToken,
      String? refreshToken}) async {
    isLogined ??= await storage.read(key: 'isLogined');
    accessToken ??= await storage.read(key: 'accessToken');
    refreshToken ??= await storage.read(key: 'refreshToken');

    await storage.write(key: 'isLogined', value: isLogined);
    await storage.write(key: 'accessToken', value: accessToken);
    await storage.write(key: 'refreshToken', value: refreshToken);
  }

  readLoginData(
      {required String key}) async {
    return await storage.read(key: key);
  }

  deleteLoginData({
      required String key}) {
    storage.delete(key: key);
  }
}
