import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'user_info.dart';
import 'home_page.dart';
import 'my_page.dart';
import 'reserve_page.dart';
import 'signin_page.dart';
import 'signup_page.dart';
import 'setting_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<UserInfo>(
      create: (_) => UserInfo(),
      child: MaterialApp(
        title: 'Navigator Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: '/signin',
        routes: {
          '/home': (context) => HomePage(),
          '/mypage': (context) => MyPage(),
          '/reserve': (context) => ReservePage(),
          '/signin': (context) => SignInPage(),
          '/signup': (context) => SignUpPage(),
        },
      ),
    );
  }
}