import 'package:flutter/material.dart';


class SignUpTopBg extends StatelessWidget {
  const SignUpTopBg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,

      decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(bottomLeft:Radius.circular(60),bottomRight: Radius.circular(60))
      ),
      child: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.imagesearch_roller,size: 40,color: Colors.white,),
            Text("Room Finder",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontSize: 40,color: Colors.white),),
          ],
        ),
      ),
    );
  }
}
