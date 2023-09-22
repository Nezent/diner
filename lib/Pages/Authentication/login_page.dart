// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:diner/Pages/Services/auth.dart';
import 'package:diner/Pages/Services/connection.dart';
import 'package:diner/Pages/Services/global.dart';
import 'package:diner/Pages/Services/register_data_model.dart';
import 'package:diner/Pages/Services/user_model.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final uidController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: SizedBox(
                    height: 900,
                    width: 300,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(
                              controller: uidController,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  label: Text('Username or Email'),
                                  hintText: 'Username or Email')),
                          SizedBox(height: 10),
                          TextFormField(
                              controller: passwordController,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  label: Text('Password'),
                                  hintText: 'Password')),
                          SizedBox(height: 10),
                          TextButton.icon(
                              onPressed: () {
                                Navigator.pushNamed(context, '/forgotMail');
                              },
                              icon: Icon(Icons.key_sharp),
                              label: Text('Forgot password')),
                          ElevatedButton.icon(
                              onPressed: () async {
                                _logIn(uidController.text,
                                    passwordController.text);
                                Navigator.pop(context, '/');
                              },
                              icon: Icon(Icons.login_sharp),
                              label: Text('Login')),
                          // SizedBox(height: 10),
                          TextButton.icon(
                              onPressed: () {
                                Navigator.pushNamed(context, '/register');
                              },
                              icon: Icon(Icons.create),
                              label: Text('Create new account')),
                          TextButton.icon(
                              onPressed: () async {},
                              icon: Icon(Icons.login_sharp),
                              label: Text('Sign in anon')),
                          // SizedBox(height: 10),
                          TextButton.icon(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.arrow_back),
                              label: Text('Back'))
                        ])))));
  }

  Future<void> _logIn(String username, String password) async {
    try {
      var userData = await MongoDB.logIn(username, password);
      if (userData != null) {
        var user = UserModel.fromJson(userData);
        print(user.id);
      } else {
        final SnackBar snackBar =
            SnackbarMessage("TypeError: Fields didn't Match!");
        snackbarKey.currentState?.showSnackBar(snackBar);
      }
    } catch (e) {
      final SnackBar snackBar = SnackbarMessage("Error: No Data Found!");
      snackbarKey.currentState?.showSnackBar(snackBar);
    }
  }
}
