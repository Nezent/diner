// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:diner/Pages/Interface/interface_pages.dart';
import 'package:diner/Pages/Token_Shop/token_shop_pages.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(
            () {
              currentIndex = index;
            },
          );
        },
        selectedIndex: currentIndex,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
            selectedIcon: Icon(Icons.home_outlined),
          ),
          NavigationDestination(
            icon: Icon(Icons.shop_2),
            label: 'Shop',
            selectedIcon: Icon(Icons.shop_2_outlined),
          ),
          NavigationDestination(icon: Icon(Icons.more_horiz), label: 'More'),
        ],
      ),
      body: <Widget>[Homepage(), BuyToken(), MoreMenu()][currentIndex],
    );
  }
}
