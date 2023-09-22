// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

final GlobalKey<ScaffoldMessengerState> snackbarKey =
    GlobalKey<ScaffoldMessengerState>();
SnackBar SnackbarMessage(String message) {
  return SnackBar(
    content: Container(
        padding: const EdgeInsets.all(8),
        height: 48,
        decoration: const BoxDecoration(
          color: Color.fromARGB(175, 0, 149, 144),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/logo.png",
              height: 32,
              width: 32,
            ),
            const SizedBox(
              height: 12,
            ),
            Flexible(
              child: Text(
                message,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    overflow: TextOverflow.ellipsis),
              ),
            ),
          ],
        )),
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    elevation: 0,
  );
}
