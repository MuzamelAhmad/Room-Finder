import 'package:flutter/material.dart';
import 'package:room_finder/widgets/GridView.dart';
import 'package:room_finder/widgets/MainAllBg.dart';
import 'package:room_finder/widgets/SearchDetailForm.dart';
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
          children: const [
            Stack(
                children: [
                  MainAllBg(),
                  SignUpTopBg(),
                  SearchDetailForm(),
                  ]
            ),
            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Locations",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25),),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: GridviewSV(),
            ),
          ],
        )
    );
  }
}
