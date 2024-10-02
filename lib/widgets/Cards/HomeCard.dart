import 'package:flutter/material.dart';

import '../../DashboardScreens/SearchPage.dart';
import '../HeaderContainerWeight.dart';


class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 200,
      left: 10,
      right: 10,
      child: Container(
        width: 350,
        height: 270,
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                offset: Offset(4, 8), // Shadow position
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white70),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Find a Property anywhere',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: HeaderContainerWeight(),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SearchPage()),
                );
              },
              child: Container(
                width: 380,
                padding:
                const EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                    child: Text(
                      'Search Now',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'Advance Search',
                    style:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}