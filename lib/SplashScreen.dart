import 'dart:async';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:room_finder/HomePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{

  @override
  void initState() {
    // TODO: implement initState

    Timer(const Duration(seconds: 3), (){
      Navigator.pushReplacement(context,MaterialPageRoute(builder:(context){
        return const HomePage();
      }));
      });
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }
  @override
  void dispose(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient:RadialGradient(colors: [Colors.lightBlueAccent,Colors.blue])
        ),
        child:const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.incomplete_circle,
            size: 50,
            color: Colors.black38,),
            Text("Room Finder",style: TextStyle(
              color: Colors.white,
            fontSize:20,
            fontWeight: FontWeight.bold
            ),),
            SizedBox(
              height: 10,
            ),
            Text("Ultimated Property Finder",style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),),
          ],
        )),
    );
  }
}
