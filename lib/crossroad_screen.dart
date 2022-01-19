import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class CrossroadScreen extends StatefulWidget {
  const CrossroadScreen({Key? key}) : super(key: key);

  @override
  _CrossroadScreenState createState() => _CrossroadScreenState();
}

class _CrossroadScreenState extends State<CrossroadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Binder"),
        leading: const Icon(Icons.stairs_sharp),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const Text(
              "3rd Party Bundle",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(color: Colors.grey),
            const SizedBox(height: 10),
            const Text(
              "sqflite & path package",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 6),
            const Text(
              "sqflite와 path 패키지를 활용하여\n내부저장소를 database로 하는 input Form 구측",
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
            const SizedBox(height: 6),
            ElevatedButton(
              child: const Text("Go to sqflite Bundle"),
              style: ElevatedButton.styleFrom(primary: const Color(0xFF121212)),
              onPressed: () => Get.toNamed('/bundle/sqflite'),
            ),
          ],
        ),
      ),
    );
  }
}
