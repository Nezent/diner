// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ForgotCode extends StatefulWidget {
  const ForgotCode({super.key});

  @override
  State<ForgotCode> createState() => _CodeState();
}

class _CodeState extends State<ForgotCode> {
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
                                  label: Text('Code'),
                                  hintText: 'Enter 4 digit auth code')),
                          SizedBox(height: 10),
                          ElevatedButton.icon(
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, '/resetPass');
                              },
                              icon: Icon(Icons.send),
                              label: Text('Submit')),
                          TextButton.icon(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.cancel),
                              label: Text('Cancel')),
                        ]))))));
  }
}
