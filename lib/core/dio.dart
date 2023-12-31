import 'package:dio/dio.dart';

var options = BaseOptions(
  baseUrl: 'http://13.209.47.202:8080',
  connectTimeout: Duration(milliseconds: 5000),
  receiveTimeout: Duration(milliseconds: 3000),
);

final Dio dio = Dio(options);
