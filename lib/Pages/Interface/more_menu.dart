// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MoreMenu extends StatefulWidget {
  const MoreMenu({super.key});

  @override
  State<MoreMenu> createState() => _MoreMenuState();
}

class _MoreMenuState extends State<MoreMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: SizedBox(
            height: 1000,
            width: 400,
            child: ListView(
              children: [
                SizedBox(
                  height: 200,
                  width: 400,
                  child: Image.network(
                      'https://paimon.moe/images/characters/full/kaedehara_kazuha.png'),
                ),
                Divider(color: Colors.white),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 400,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/profile');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.person, size: 30),
                              SizedBox(width: 10),
                              Text(
                                'Profile',
                                style: TextStyle(fontSize: 25),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 400,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/settings');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.settings, size: 30),
                              SizedBox(width: 10),
                              Text(
                                'Settings',
                                style: TextStyle(fontSize: 25),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 400,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/about');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.info_outlined, size: 30),
                              SizedBox(width: 10),
                              Text(
                                'About Diner',
                                style: TextStyle(fontSize: 25),
                              ),
                            ],
                          ),
                        ),
                      )
                    ]),
                Divider(color: Colors.white),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.coffee, size: 40)),
                    SizedBox(width: 30),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.perm_contact_cal_sharp, size: 40),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
