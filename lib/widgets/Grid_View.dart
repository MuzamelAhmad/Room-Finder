import 'package:flutter/material.dart';

class GridviewSV extends StatelessWidget {
  final bool Cross_Axis_Count;
  final bool item_Count;

  GridviewSV({super.key, required this.Cross_Axis_Count, required this.item_Count});

  final List<Map<String , dynamic>> grlMap = [
    {
      "title": "Lalitpur",
      "found": "10 Found",
      "Images":"assets/images/P1.jpeg",
    },
    {
      "title": "Imadol",
      "found": "4 Found",
      "Images":"assets/images/P2.jpeg",
    },
    {

      "title": "Kupondole",
      "found": "12 Found",
      "Images":"assets/images/P3.jpeg",
    },
    {

      "title": "Lalitpur",
      "found": "16 Found",
      "Images":"assets/images/P4.jpeg",
    },
    {
      "title": "Mahalaxmi",
      "found": "20 Found",
      "Images":"assets/images/P5.jpeg",
    },
    {
      "title": "Koteshwor",
      "found": "25 Found",
      "Images":"assets/images/P6.jpeg",
    },
    {
      "title": "Lalitpur",
      "found": "10 Found",
      "Images":"assets/images/P1.jpeg",
    },
    {
      "title": "Imadol",
      "found": "4 Found",
      "Images":"assets/images/P2.jpeg",
    },
    {

      "title": "Kupondole",
      "found": "12 Found",
      "Images":"assets/images/P3.jpeg",
    },
    {

      "title": "Lalitpur",
      "found": "16 Found",
      "Images":"assets/images/P4.jpeg",
    },
    {
      "title": "Mahalaxmi",
      "found": "20 Found",
      "Images":"assets/images/P5.jpeg",
    },
    {
      "title": "Koteshwor",
      "found": "25 Found",
      "Images":"assets/images/P6.jpeg",
    },



  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: Cross_Axis_Count ? 1 : 2
              ,crossAxisSpacing: 12,mainAxisSpacing: 12,mainAxisExtent: 200),
          itemCount: item_Count ? 6 : grlMap.length,
          itemBuilder: (_, index) {
            return Container(
              decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(4, 8), // Shadow position
                    ),
                  ],borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.white10),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("${grlMap.elementAt(index)['Images']}",height:210,width: double.infinity,fit: BoxFit.cover,),),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.location_on,color: Colors.white,size: 25,),
                            const SizedBox(width: 10,),
                            Text("${grlMap.elementAt(index)['title']}",style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30,left: 20),
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text("${grlMap.elementAt(index)['found']}",style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                      )
                    ],
                  ),
                  ],
              ),
            );
          }
      ),
    );
  }
}
