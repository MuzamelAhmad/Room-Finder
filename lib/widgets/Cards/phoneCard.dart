import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../LoginPage.dart';

class phoneCard extends StatelessWidget {
  const phoneCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 230,
      left: 10,
      right: 10,
      child: Container(
        width: 350,
        height: 320,
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                offset: Offset(4, 8), // Shadow position
              ),
            ],borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.white70),
        child:Padding(
          padding: const EdgeInsets.all(16.16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Mobile Number",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold , color: Colors.black),),
                const SizedBox(height: 10,),
                const Text("Please enter your phone number. We wil send you 4-digit Code to verify your account.",textAlign: TextAlign.center,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),),
                const SizedBox(
                  height: 10,
                ),
                Form(
                  child: Column(
                    children: <Widget>[
                      const IntlPhoneField(
                        decoration: InputDecoration(
                          labelText: "Phone Number",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()),);
                      },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical:12 ,horizontal:25 ),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text('Send Code',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
