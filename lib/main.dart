import 'package:flutter/material.dart';
import 'package:flutter_binder/functions/route.dart';
import 'package:flutter_binder/pages/topNavWithoutAppbar/top_nav_without_appbar_page.dart';
import 'package:flutter_binder/widgets/buttons/default_button.dart';
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
      home: const MainFrame(),
      getPages: [
        GetPage(
          name: "/topNavWithoutAppBar",
          page: () => const TopNavWithoutAppBarPage(),
          transition: Transition.leftToRight,
        )
      ],
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
            children: [
              DefaultButton(route: "/topNavWithoutAppBar"),
            ],
          ),
        ),
      ),
    );
  }
}
