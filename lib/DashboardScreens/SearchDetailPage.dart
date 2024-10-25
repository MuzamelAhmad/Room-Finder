import 'package:flutter/material.dart';
import 'package:room_finder/widgets/Grid_View.dart';
import 'package:room_finder/widgets/MainAllBg.dart';
import 'package:room_finder/widgets/Cards/SearchDetailForm.dart';
import 'package:room_finder/widgets/SignUpTopBg.dart';


class SearchDetailPage extends StatefulWidget {
  const SearchDetailPage({super.key});

  @override
  State<SearchDetailPage> createState() => _SearchDetailPageState();
}

class _SearchDetailPageState extends State<SearchDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            const Stack(
                children: [
                  MainAllBg(),
                  SignUpTopBg(),
                  SearchDetailForm(),
                  ]
            ),
            const SizedBox(height: 40,),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Locations",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridviewSV(Cross_Axis_Count: false, item_Count: true),
            ),
          ],
        )
    );
  }
}
