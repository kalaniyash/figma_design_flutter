import 'package:flutter/material.dart';

class HomeScreenSecond extends StatefulWidget {
  const HomeScreenSecond({super.key});

  @override
  State<HomeScreenSecond> createState() => _HomeScreenSecondState();
}

class _HomeScreenSecondState extends State<HomeScreenSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Home Screen",style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
