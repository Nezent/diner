// ignore_for_file: prefer_const_constructors
import 'package:diner/Pages/Services/connection.dart';
import 'package:diner/Pages/Services/global.dart';
import 'package:diner/Pages/Services/register_data_model.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final rePasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Register'),
        ),
        body: Center(
            child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: SizedBox(
                    height: 500,
                    width: 400,
                    child: Form(
                        child: Column(children: [
                      TextFormField(
                          controller: nameController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text('Name'),
                              hintText: 'Enter your full name')),
                      SizedBox(height: 10),
                      TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text('Email Address'),
                              hintText: 'Enter your email address')),
                      SizedBox(height: 10),
                      TextFormField(
                          controller: userNameController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text('Username'),
                              hintText: 'Enter a username')),
                      SizedBox(height: 10),
                      TextFormField(
                          controller: passwordController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text('Password'),
                              hintText: 'Enter a password')),
                      SizedBox(height: 10),
                      TextFormField(
                          controller: rePasswordController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text('Re-Password'),
                              hintText: 'Re-enter a password')),
                      SizedBox(height: 10),
                      ElevatedButton.icon(
                          onPressed: () async {
                            _checkUser(
                                nameController.text,
                                emailController.text,
                                passwordController.text,
                                userNameController.text);
                            Navigator.pop(context, '/login');
                          },
                          icon: Icon(Icons.create),
                          label: Text('Register'))
                    ]))))));
  }

  Future<void> _checkUser(
      String name, String email, String password, String username) async {
    try {
      var userData = await MongoDB.checkUserData(email);
      if (userData == null) {
        _insertData(name, email, password, username);
      } else {
        final SnackBar snackBar = SnackbarMessage("USER ALREADY EXISTS!");
        snackbarKey.currentState?.showSnackBar(snackBar);
      }
    } catch (e) {
      final SnackBar snackBar = SnackbarMessage("USER ALREADY EXISTS!");
      snackbarKey.currentState?.showSnackBar(snackBar);
    }
  }

  Future<void> _insertData(
      String name, String email, String password, String username) async {
    final data = RegisterDataModel(
      name: name,
      email: email,
      username: username,
      password: password,
    );
    await MongoDB.register(data);
    await Future.delayed(const Duration(milliseconds: 1000));
  }
}
