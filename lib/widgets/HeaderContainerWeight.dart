import 'package:flutter/material.dart';

class HeaderContainerWeight extends StatefulWidget {
  const HeaderContainerWeight({super.key});

  @override
  State<HeaderContainerWeight> createState() => _HeaderContainerWeightState();
}

class _HeaderContainerWeightState extends State<HeaderContainerWeight> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon:  const Icon(Icons.location_on,weight: 24, color: Colors.indigo,),
                  hintText: "Search address or Near you",
                  helperStyle: const TextStyle(fontSize: 18.0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),

                ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.blue)
                  ),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
