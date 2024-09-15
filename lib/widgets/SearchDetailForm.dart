import 'package:flutter/material.dart';

import '../SearchPage.dart';

class SearchDetailForm extends StatelessWidget {
  const SearchDetailForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 200,
      left: 10,
      right: 10,
      child: Container(
        width: 400,
        height: 300,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color : Colors.black12,
              blurRadius: 4,
              offset: Offset(4,8),
            ),],
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),

        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Advance Search", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Enter an address or City",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),

                      ),
                      prefixIcon: Icon(Icons.location_on,color: Colors.blue,),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.payments,color: Colors.blue,),
                      labelText: "Enter Price Range",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),

                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Resident Type",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                      prefixIcon: Icon(Icons.menu,color: Colors.blue,),
                    ),
                  ),
                ],
              )),
            ),
            InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchPage()),);
            },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical:12 ,horizontal:25 ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text('Search Now',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                )),
          ],
        ),
      ),
    );
  }
}
