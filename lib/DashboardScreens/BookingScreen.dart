import 'package:flutter/material.dart';
import 'package:room_finder/Model/RoomDataModel.dart';
import 'dart:ui';

class BookingScreen extends StatelessWidget {
  BookingScreen({super.key, required this.userpet});

  final MyListItem userpet;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: ListView(
          children:[
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 400,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(bottomLeft:Radius.circular(60),bottomRight: Radius.circular(60)),
                  ),
                  child: ClipRRect(
                      borderRadius: const BorderRadius.only(bottomLeft:Radius.circular(60),bottomRight: Radius.circular(60)),
                      child: Image.asset(userpet.Images, height:400,width: double.infinity, fit: BoxFit.cover,)),
                ),
                Positioned(
                  top: 300,
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(userpet.title,style:const TextStyle(fontSize: 20,fontWeight: FontWeight.bold ),),

                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            children: [
                              Text(userpet.Rate,style:const TextStyle(fontSize: 16,fontWeight: FontWeight.bold ),),
                              Text(userpet.time,style:const TextStyle(fontSize: 18,fontWeight: FontWeight.bold ),),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Positioned(
                top: 410,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(180),
                              child: Image.asset(userpet.Images, height:80,width: 80, fit: BoxFit.cover,)),
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("Courtnry Henry",style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold ),),

                            Text("Landlord",style:TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black45 ),),
                          ],
                        ),
                        const SizedBox(
                      width: 20,
                    ),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.phone, color: Colors.indigo,)),
                    const SizedBox(
                      width: 20,
                    ),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.email, color: Colors.indigo,)),
                      ],
                    ),
                    ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Positioned(
                  top: 410,
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                                padding: EdgeInsets.all(2.0),
                                child: Icon(Icons.location_on,color: Colors.indigo,)
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Column(
                              children: [
                                Text("1.2 Km from Gwarko",style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold ),),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(userpet.icon,style:const TextStyle(fontSize: 26,fontWeight: FontWeight.bold )),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(userpet.avail,style:const TextStyle(fontSize: 16,fontWeight: FontWeight.bold ),),

                          ],
                        ),
                         const Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 80,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Mahalaxmi, Lalitpur",style:TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black45 ),),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("0 Applied | 19 Views",style:TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black45 ),),

                              ],
                            ),
                            SizedBox(
                              width:25,
                            ),
                            Column(
                              children: [
                                Text("Property Owned",style:TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black45 ),),
                                Text("By: Alok",style:TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black45 ),),
                                SizedBox(
                                  height: 2,
                                ),
                                Text("View on Google",style:TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black45 ),),
                                Text("maps",style:TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black45 ),),

                              ],
                            ),
                            ],
                        ),
                        ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 510,
              child: BlurredImageRow(),
            ),

          ],

        ),
      ),

    );
  }
}




class BlurredImageRow extends StatelessWidget {
  final List<String> imageUrls = [
    'assets/images/P10.jpg',
    'assets/images/P12.jpg',
    'assets/images/P11.jpg',
    'assets/images/P9.jpg',
    'assets/images/P7.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imageUrls
            .asMap()
            .entries
            .map((entry) => _buildBlurredImageContainer(entry.key, entry.value))
            .toList(),
      ),
    );
  }

  Widget _buildBlurredImageContainer(int index, String url) {
    bool isLastImage = index == imageUrls.length - 1;

    return Container(
      width: 60,
      height: 60,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: isLastImage ? 5.0 : 3.0, sigmaY: isLastImage ? 5.0 : 3.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black54.withOpacity(0.7), // Semi-transparent background
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(url),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            if (isLastImage)
              const Center(
                child: Text(
                  '+5',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
