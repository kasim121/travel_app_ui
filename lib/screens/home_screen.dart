import 'package:flutter/material.dart';


import '../resources/style_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int index = 0;
  @override
  Widget build(BuildContext context) {
    return 
       SingleChildScrollView(
         child: Container(
          height: MediaQuery.of(context).size.height,
          color: const Color.fromRGBO(235, 224, 224, 1),
              child:Center(
                child: Text('Home',
                          style: getBoldTextStyle(color: Colors.white)),
              ),
         ),
       );
  }
}

class CommonTextIconButton extends StatelessWidget {
  const CommonTextIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(color: Colors.blue),
        backgroundColor: Colors.white,
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ), 
      ),
      onPressed: () => {},
      icon: const Icon(Icons.send_rounded,),
      label: const Text('Top Up Balance',),
    );
  }
}
