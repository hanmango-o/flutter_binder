import 'package:flutter/material.dart';
import 'package:flutter_binder/crossroad_screen.dart';
import 'package:flutter_binder/sqflite_bundle/view/dog_list_view.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const FlutterBinder());
}

class FlutterBinder extends StatelessWidget {
  const FlutterBinder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Color(0xFF121212),
        ),
        primaryColor: const Color(0xFF121212),
      ),
      home: const CrossroadScreen(),
      getPages: [
        GetPage(name: '/bundle/sqflite', page: () => const DogListView()),
      ],
    );
  }
}
