import 'package:flutter/material.dart';

import 'FadingTextAnimation.dart';

class Animatedsearchbar extends StatelessWidget {
  const Animatedsearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 1.0,
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                offset: Offset(4, 8), // Shadow position
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(10)),color : Colors.white70),
        child: const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16,right: 16),
              child: Icon(Icons.search,weight: 24,),
            ),
            Expanded(child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //TODO - add fading text animation
                FadingText(
                  text: 'Search address or Near you',

                ),
              ],
            ))
          ],
        ),
      );
  }
}
