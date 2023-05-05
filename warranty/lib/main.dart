import 'package:firebase_core/firebase_core.dart';
import 'package:warranty/pages/getStarted_page.dart';
import 'package:warranty/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'componats/_BottomNavBarState.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // Replace with actual values
    options: const FirebaseOptions(
        apiKey: "AIzaSyDeQFG_OqqVpAnPu3JlMap9hYT0_zXtZYk",
        appId: "1:1039816346946:android:9169b6408e8d766a1f8cdb",
        messagingSenderId: "1039816346946",
        projectId: "warrantyfault"
    ),
  );
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
