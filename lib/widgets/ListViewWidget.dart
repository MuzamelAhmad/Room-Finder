import 'package:flutter/material.dart';
import 'package:room_finder/Model/RoomDataModel.dart';

import '../DashboardScreens/BookingScreen.dart';




class ListViewWidget extends StatelessWidget {
  final bool itemcount_;

  ListViewWidget({super.key, required this.itemcount_});




  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: (context,index){
      final item = myList[index];
      return InkWell(onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>

            BookingScreen(userpet: item,)));
      },
        child: Card(
          child:Container(
            width: double.infinity,
                height: 120,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(item.Images, height:120,width: 120, fit: BoxFit.cover,)),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(item.title,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                            const SizedBox(
                              width: 30,
                            ),
                            Text(item.icon,style: const TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green),),
                            Text(item.avail,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(item.Rate,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.blue),),
                            Text(item.time,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                            const SizedBox(
                              width: 50,
                            ),
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
                              width: 10,
                            ),
                            Text(item.Location,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                            const SizedBox(
                              width: 50,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
      );

    }, separatorBuilder: (context,index){
      return const Divider(height: 20,thickness: 2);
    }, itemCount: itemcount_ ? 3 : myList.length);
  }
}