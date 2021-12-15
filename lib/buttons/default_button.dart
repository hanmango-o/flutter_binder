import 'dart:developer';

import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget DefaultButton() {
  const paddingSize = 8.0;
  return ElevatedButton(
    onPressed: () => log("button pressed"),
    child: const Text("DefaultButton"),
    style: ElevatedButton.styleFrom(
      primary: const Color(0xFF121212),
      minimumSize: const Size(64, 42),
      padding: const EdgeInsets.only(
        left: paddingSize * 2,
        top: paddingSize,
        right: paddingSize * 2,
        bottom: paddingSize,
      ),
      fixedSize: Size.infinite,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );
}
