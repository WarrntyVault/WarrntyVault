import 'package:warranty/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'componats/_BottomNavBarState.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavBar(),
    );
  }
}
