import 'package:flutter/material.dart';
import 'package:room_finder/widgets/Grid_View.dart';
class Locations extends StatefulWidget {
  const Locations({super.key});

  @override
  State<Locations> createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Locations')),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridviewSV(Cross_Axis_Count: true, item_Count: false),
          ),
        ) );
  }
}
