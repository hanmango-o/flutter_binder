import 'package:flutter/material.dart';
import 'package:flutter_binder/crossroad_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Color(0xFF121212),
        ),
        primaryColor: Colors.black,
      ),
      home: const CrossroadScreen(),
      getPages: [],
    );
  }
}
