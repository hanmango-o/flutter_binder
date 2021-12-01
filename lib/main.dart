import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.black87,
        ),
        primaryColor: Colors.black,
      ),
      home: const MainFrame(),
    );
  }
}

class MainFrame extends StatelessWidget {
  const MainFrame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Binder")),
      body: Center(
        child: ListView(
            // 버튼으로 라우팅하여 각 위젯에 접근할 예정
            ),
      ),
    );
  }
}
