import 'package:flutter/material.dart';

class AppButtonStyle {
  static ButtonStyle raisedButtonStyleNormal = ElevatedButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: const Color.fromRGBO(31, 100, 113, 1),
    minimumSize: const Size(88, 36),
    padding: const EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ),
  );

  static ButtonStyle raisedButtonStyleNormal2 = ElevatedButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: const Color.fromRGBO(31, 100, 113, 1),
    minimumSize: const Size(400, 70),
    padding: const EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ),
  );
}
