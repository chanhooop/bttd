import 'package:bttd/config/route/router.dart';
import 'package:bttd/core/provider_observer.dart';
import 'package:bttd/dataRepository/user_repository.dart';
import 'package:bttd/dataRepository/user_secure_strage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  String isLogined =await UserSecureStorage().readLoginData(key: 'isLogined') ?? '';
  String accessToken =await UserSecureStorage().readLoginData(key: 'accessToken') ?? '';
  String refreshToken =await UserSecureStorage().readLoginData(key: 'refreshToken') ?? '';
  print('isLoggined : ${isLogined}');
  print('isLoggined : ${accessToken}');
  print('isLoggined : ${refreshToken}');
  UserRepository().autoLogin();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      observers: [
        Logger(),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'BTTD',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: router,
      ),
    );
  }
}
