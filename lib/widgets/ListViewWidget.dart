import 'package:flutter/material.dart';


class ListViewWidget extends StatelessWidget {
  ListViewWidget({super.key});
  final List<Map<String , dynamic>> grlMap = [
    {
      "title": "1 BHK at Lalitpur",
      "icon":"fhk",
      "avail" : "Available",
      "Rate": "RS.8000 /",
      "time":"per month",
      "Images":"assets/images/P7.jpg",
      "location" : "Mahalaxmi Lalitpur"
    },

  ];


  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: (context,index){
      return ;

    }, separatorBuilder: (context,index){
      return const Divider(height: 20,thickness: 2);
    }, itemCount: grlMap.length);
  }
}
