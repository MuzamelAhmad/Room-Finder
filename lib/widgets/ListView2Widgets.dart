import 'package:flutter/material.dart';
import 'package:room_finder/Model/RoomDataModel.dart';

import '../DashboardScreens/BookingScreen.dart';




class ListView2Widget extends StatelessWidget {
  /*final List<Map<String , dynamic>> grlMap = [
    {
      "title": "1 Office at Lalitpur",
      "icon":"angle-double-up",
      "avail" : "Available",
      "Rate": "RS.8000 /",
      "time":"per month",
      "Images":"assets/images/P7.jpg",
      "location" : "Mahalaxmi Lalitpur"
    },
    {
      "title": "1 Office at Imadul",
      "icon":"accessible_rounded",
      "avail" : "unavailable",
      "Rate": "RS.9000 /",
      "time":"per month",
      "Images":"assets/images/P8.jpg",
      "location" : "main Imadul"
    },
    {
      "title": "Room for 4 Students",
      "icon":"not_accessible_rounded",
      "avail" : "Available",
      "Rate": "RS.6000 /",
      "time":"per month",
      "Images":"assets/images/P9.jpg",
      "location" : "Kupondole"
    },
    {
      "title": "4 Room House",
      "icon":"accessible_rounded",
      "avail" : "unavailable",
      "Rate": "RS.15000 /",
      "time":"per month",
      "Images":"assets/images/P10.jpg",
      "location" : "Koteshwor Lalitpur"
    },
    {
      "title": "1 BHK at Lalitpur",
      "icon":"accessible_rounded",
      "avail" : "Available",
      "Rate": "RS.8000 /",
      "time":"per month",
      "Images":"assets/images/P11.jpg",
      "location" : "Mahalaxmi Lalitpur"
    },
    {
      "title": "1 BHK at Lalitpur",
      "icon":"not_accessible_rounded",
      "avail" : "unavailable",
      "Rate": "RS.8000 /",
      "time":"per month",
      "Images":"assets/images/P12.jpg",
      "location" : "Mahalaxmi Lalitpur"
    },
    {
      "title": "1 BHK at Lalitpur",
      "icon":"accessible_rounded",
      "avail" : "Available",
      "Rate": "RS.8000 /",
      "time":"per month",
      "Images":"assets/images/P13.jpg",
      "location" : "Mahalaxmi Lalitpur"
    },
    {
      "title": "1 BHK at Lalitpur",
      "icon":"accessible_rounded",
      "avail" : "Available",
      "Rate": "RS.8000 /",
      "time":"per month",
      "Images":"assets/images/P14.jpg",
      "location" : "Mahalaxmi Lalitpur"
    },
    {
      "title": "1 BHK at Lalitpur",
      "icon":"accessible_rounded",
      "avail" : "Available",
      "Rate": "RS.8000 /",
      "time":"per month",
      "Images":"assets/images/P15.jpg",
      "location" : "Mahalaxmi Lalitpur"
    },
    {
      "title": "1 BHK at Lalitpur",
      "icon":"accessible_rounded",
      "avail" : "Available",
      "Rate": "RS.8000 /",
      "time":"per month",
      "Images":"assets/images/P16.jpg",
      "location" : "Mahalaxmi Lalitpur"
    },

  ];*/

  final bool itemcount__;

  ListView2Widget({super.key, required this.itemcount__});




  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: (context,index){
      final item = myList[index];
      return InkWell(onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> BookingScreen(userpet: item,)));
      },
        child: Card(
          child: Container(
            width: double.infinity,
            height: 250,
            child:Stack(
                children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(item.Images, height:150,width: double.infinity, fit: BoxFit.cover,)),
              ),

              Positioned(
                top: 150,
                child: Row(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(item.title,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),

                              Text(item.icon,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green),),
                              Text(item.avail,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(item.Rate,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.blue),),
                              Text(item.time,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(Icons.location_on,color: Colors.blue, size: 20,),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(item.Location,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                            ],
                          ),
                        ],

                 ),
               ),
              ],
            ),
          ),
        ),
      );

    }, separatorBuilder: (context,index){
      return const Divider(height: 20,thickness: 2);
    }, itemCount: itemcount__ ? 3 : myList.length);
  }
}
