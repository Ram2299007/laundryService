import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class testSreen extends StatefulWidget {
  const testSreen({super.key});

  @override
  State<testSreen> createState() => _testSreenState();
}

class _testSreenState extends State<testSreen> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false, // Remove debug banner
      home: Scaffold(
        backgroundColor: Colors.white,
        //todo chanerg to SplashScreen Mainscreen
        body: Text("Ram"),
      ),
    );
  }
}
