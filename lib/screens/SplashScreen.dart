import 'package:flutter/material.dart';
import 'dart:async';

import 'package:laundryservice/screens/SignInScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  // todo called state class
  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
    //  Navigate to the new screen after the delay
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const SignInScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {


    //todo for creating main ui here

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height:
                  MediaQuery.of(context).size.height * 0.85, // Adjust as needed
              width:
                  MediaQuery.of(context).size.width * 0.85, // Adjust as needed
              child: Image.asset('assets/logo.png'),
            ),
          ],
        ),
      ),
    );
  }
}
