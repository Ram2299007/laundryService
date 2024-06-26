import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YourOrderIsConfirmed extends StatefulWidget {
  const YourOrderIsConfirmed({super.key});

  @override
  State<YourOrderIsConfirmed> createState() => _YourOrderIsConfirmedState();
}

class _YourOrderIsConfirmedState extends State<YourOrderIsConfirmed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
          child: SingleChildScrollView(
              child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 270),

                      Text(
                        "Your order is confirmed", // Replace with your country code
                        style: GoogleFonts.poppins(
                            fontSize: 24,
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 20),

                      Image.asset(
                        "assets/partyingface.png", // Path to your arrow image
                        width: 64,
                        height: 64,
                      ),

                      SizedBox(height: 80),

                      Text(
                        "Your order will deliver at vender in\n              "
                            "       sometime", // Replace with your country code
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )))),
    );
  }
}
