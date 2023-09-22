import 'package:flutter/material.dart';

class BuyToken extends StatefulWidget {
  const BuyToken({super.key});

  @override
  State<BuyToken> createState() => _BuyTokenState();
}

class _BuyTokenState extends State<BuyToken> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shop')),
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
