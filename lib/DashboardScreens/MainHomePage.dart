import 'package:flutter/material.dart';
import 'package:room_finder/widgets/Cards/HomeCard.dart';
import 'package:room_finder/widgets/GridView.dart';
import 'package:room_finder/widgets/MainAllBg.dart';
import 'package:room_finder/widgets/SignUpTopBg.dart';


class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: const [
            Stack(
                children: [
                    MainAllBg(),
                    SignUpTopBg(),
                    HomeCard(),
                ]),
            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Locations",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25),),
                  Text("View all",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25,color: Colors.blue),),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: GridviewSV(),
            ),
          ],
        ));
  }
}


