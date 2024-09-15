import 'package:flutter/material.dart';
import 'SplashScreen.dart';

void main() {
  runApp(const MyRoomFinder());
}
class MyRoomFinder extends StatelessWidget {
  const MyRoomFinder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Room Finder",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
