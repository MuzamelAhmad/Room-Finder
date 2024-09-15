import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue,
        child: const Icon(Icons.settings,color: Colors.deepOrange, size: 50,),
      ),
    );
  }
}
