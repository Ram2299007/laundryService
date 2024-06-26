import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'MainScreen.dart';

class PaymentSuccessful extends StatefulWidget {
  const PaymentSuccessful({super.key});

  @override
  State<PaymentSuccessful> createState() => _PaymentSuccessfulState();
}

class _PaymentSuccessfulState extends State<PaymentSuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body:  SafeArea(
          child: SingleChildScrollView(
              child: Center(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Icon( Icons.arrow_back_ios_new,
                                color: Color.fromRGBO(15, 15, 20, 1), // Set the color of the icon
                                size: 13.0,         // Set the size of the icon
                                semanticLabel: 'Back'),
                            onPressed: () {
                              // Navigate to a new page
                              Navigator.pop(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Mainscreen(),
                                ),
                              );
                            },
                          ),

                          Text(
                            'Back',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                color: Color.fromRGBO(15, 15, 20, 1),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 80),

                      Image.asset(
                        "assets/payment.png", // Path to your arrow image
                        width: 277.45,
                        height: 281.14,
                      ),

                      SizedBox(height: 40),

                      Text(
                        "Payment Successful", // Replace with your country code
                        style: GoogleFonts.poppins(
                            fontSize: 24,
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontWeight: FontWeight.w500),
                      ),

                    ],
                  )))),
    );
  }
}
