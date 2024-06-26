import 'package:flutter/material.dart';
import 'package:laundryservice/screens/ConnectingToDriver.dart';
import 'package:laundryservice/screens/MainScreen.dart';
import 'package:laundryservice/screens/MeetPickUpPoint.dart';
import 'package:laundryservice/screens/MeetPickUpPoint1.dart';
import 'package:laundryservice/screens/PaymentSuccessful.dart';
import 'package:laundryservice/screens/RateDriver.dart';
import 'package:laundryservice/screens/RateScreen.dart';
import 'package:laundryservice/screens/ScheduleDelivery.dart';
import 'package:laundryservice/screens/SelectPickupTimeAndDate.dart';
import 'package:laundryservice/screens/SelectPickupTimeAndDate1.dart';
import 'package:laundryservice/screens/SplashScreen.dart';
import 'package:laundryservice/screens/TrackYourOrder.dart';
import 'package:laundryservice/screens/YourOrderIsConfirmed.dart';
import 'package:laundryservice/screens/testScreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Remove debug banner
      home: Scaffold(
        backgroundColor: Colors.white,

        //todo chanerg to SplashScreen Mainscreen
        body: SelectPickupTimeAndDate1(),
      ),
    );
  }
}
