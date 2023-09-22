// ignore_for_file: prefer_const_constructors

import 'package:diner/Pages/Services/connection.dart';
import 'package:flutter/material.dart';
import 'package:diner/Pages/User/user_pages.dart';
import 'package:diner/Pages/Interface/interface_pages.dart';
import 'package:diner/Pages/Authentication/auth_pages.dart';
import 'package:diner/Pages/Token_Shop/token_shop_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDB.connect();
  runApp(
    MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/loading': (context) => Loading(),
        '/buy_token': (context) => BuyToken(),
        '/profile': (context) => Profile(),
        '/login': (context) => Login(),
        '/register': (context) => Registration(),
        '/forgotMail': (context) => ForgotMail(),
        '/forgotCode': (context) => ForgotCode(),
        '/resetPass': (context) => ResetPassword(),
        '/settings': (context) => Settings(),
        '/about': (context) => About()
      },
    ),
  );
}
