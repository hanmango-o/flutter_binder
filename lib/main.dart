import 'package:flutter/material.dart';

import 'buttons/default_button.dart';

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
          color: Color(0xFF121212),
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            // 버튼으로 라우팅하여 각 위젯에 접근할 예정
            children: [
              DefaultButton(),
            ],
          ),
        ),
      ),
    );
  }
}
