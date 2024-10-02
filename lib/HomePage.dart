import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/academicons.dart';
import 'package:room_finder/LoginPage.dart';
import 'package:colorful_iconify_flutter/icons/emojione.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:room_finder/widgets/Cards/SignUpBg.dart';
import 'package:room_finder/widgets/SignUpTopBg.dart';
import 'package:room_finder/widgets/Cards/phoneCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          SignUpBg(isLoginScreen: true,),
          SignUpTopBg(),
          phoneCard(),
        ],
      ),
    );
  }
}


