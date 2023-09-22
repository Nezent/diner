import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: SafeArea(
          child: SizedBox(
            height: 1000,
            width: 400,
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Divider(color: Colors.white),
                    SizedBox(
                      height: 250,
                      width: 400,
                      child: InkWell(
                        onTap: () {
                          // Navigator.pushNamed(context, ');
                        },
                      ),
                    ),
                    Divider(color: Colors.white),
                    SizedBox(
                      height: 250,
                      width: 400,
                      child: InkWell(
                        onTap: () {
                          // Navigator.pushNamed(context, ');
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
