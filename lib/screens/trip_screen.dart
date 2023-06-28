import 'package:flutter/material.dart';

import '../resources/style_manager.dart';

class TripScreen extends StatelessWidget {
  const TripScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   SingleChildScrollView(
         child: Container(
          height: MediaQuery.of(context).size.height,
          color: const Color.fromRGBO(235, 224, 224, 1),
              child:Center(
                child: Text('Trip',
                          style: getBoldTextStyle(color: Colors.white)),
              ),
         ),
       );
  }
}