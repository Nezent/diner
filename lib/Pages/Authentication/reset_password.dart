// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: SizedBox(
                    height: 500,
                    width: 400,
                    child: Form(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                          TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  label: Text('New Password'),
                                  hintText: 'Enter new password')),
                          SizedBox(height: 10),
                          TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  label: Text('New Password re-entry'),
                                  hintText: 'Re-enter your password')),
                          SizedBox(height: 10),
                          ElevatedButton.icon(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.create),
                              label: Text('Reset Password'))
                        ]))))));
  }
}
