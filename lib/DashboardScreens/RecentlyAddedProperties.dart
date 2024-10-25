import 'package:flutter/material.dart';
import 'package:room_finder/widgets/ListViewWidget.dart';

class RecentlyAddedProperties extends StatefulWidget {
  const RecentlyAddedProperties({super.key});

  @override
  State<RecentlyAddedProperties> createState() => _RecentlyAddedPropertiesState();
}

class _RecentlyAddedPropertiesState extends State<RecentlyAddedProperties> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Recently Added Properties'),

        ),
        body:ListViewWidget(itemcount_: false,),
    );
  }
}
