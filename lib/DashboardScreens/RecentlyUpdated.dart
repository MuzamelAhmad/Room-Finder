import 'package:flutter/material.dart';

import 'package:room_finder/widgets/ListView2Widgets.dart';


class RecentlyUpdated extends StatefulWidget {
  const RecentlyUpdated({super.key});

  @override
  State<RecentlyUpdated> createState() => _RecentlyUpdatedState();
}

class _RecentlyUpdatedState extends State<RecentlyUpdated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recently Updated'),

      ),
      body:ListView2Widget(itemcount__: false,),
    );
  }
}
