import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Trackmyorder extends StatefulWidget {
  const Trackmyorder({super.key});

  @override
  State<Trackmyorder> createState() => _TrackmyorderState();
}

class _TrackmyorderState extends State<Trackmyorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
              child: Center(
                  child: Column(
                    children: [

                      Text(
                        "Settings", // Replace with your country code
                        style: GoogleFonts.poppins(
                            fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                      ),
                    ],
                  )))),
    );
  }
}
