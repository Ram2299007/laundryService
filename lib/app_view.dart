import 'package:flutter/material.dart';
import 'package:laundryservice/screens/MainScreen.dart';
import 'package:laundryservice/screens/SplashScreen.dart';
import 'package:laundryservice/screens/TrackMyOrder.dart';
import 'package:laundryservice/screens/TrackYourOrder.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Remove debug banner
      home: Scaffold(
        backgroundColor: Colors.white,

        //todo chanerg to SplashScreen Mainscreen
        body: TrackYourOrder(),
      ),
    );
  }
}
