// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ForgotMail extends StatefulWidget {
  const ForgotMail({super.key});

  @override
  State<ForgotMail> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotMail> {
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
                                  label: Text('Email'),
                                  hintText: 'Enter email')),
                          SizedBox(height: 10),
                          ElevatedButton.icon(
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, '/forgotCode');
                              },
                              icon: Icon(Icons.send),
                              label: Text('Send auth code')),
                          TextButton.icon(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.cancel),
                              label: Text('Cancel'))
                        ]))))));
  }
}
