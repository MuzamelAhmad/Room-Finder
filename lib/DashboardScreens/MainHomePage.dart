import 'package:flutter/material.dart';
import 'package:room_finder/DashboardScreens/Locations.dart';
import 'package:room_finder/DashboardScreens/RecentlyUpdated.dart';
import 'package:room_finder/widgets/Cards/HomeCard.dart';
import 'package:room_finder/widgets/Grid_View.dart';
import 'package:room_finder/widgets/ListViewWidget.dart';
import 'package:room_finder/widgets/ListView2Widgets.dart';
import 'package:room_finder/widgets/MainAllBg.dart';
import 'package:room_finder/widgets/SignUpTopBg.dart';
import 'package:room_finder/DashboardScreens/RecentlyAddedProperties.dart';



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
          children: [
            const Stack(
                children: [
                    MainAllBg(),
                    SignUpTopBg(),
                    HomeCard(),
                ]),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Recently Added Properties",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                  InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const RecentlyAddedProperties()));
                  },
                      child: const Text("View all",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.blue),)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 520,
                  child: ListViewWidget( itemcount_: true ,)),
            ),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Locations",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                  InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Locations()));
                  },
                      child: const Text("View all",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.blue),)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridviewSV(Cross_Axis_Count: false, item_Count: true),
            ),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Recently Updated",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                  InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const RecentlyUpdated()));
                  },
                      child: const Text("View all",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.blue),)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  height: 520,
                  child: ListView2Widget(itemcount__:  true ,)),
            ),
          ],
        ));
  }
}


