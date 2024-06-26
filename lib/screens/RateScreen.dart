import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import 'MainScreen.dart';

class RateScreen extends StatefulWidget {
  const RateScreen({super.key});

  @override
  State<RateScreen> createState() => _RateScreenState();
}

class _RateScreenState extends State<RateScreen> {
  double _rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
          child: SingleChildScrollView(
              child: Center(
                  child: Column(
                    children: [

                      Column(

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

                          SizedBox(height: 110),

                          Row(
                            children: [
                              SizedBox(width: 47),

                              Text("Driver reached at your location",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18))),

                            ],
                          ),
                          SizedBox(height: 50),

                          Row(
                            children: [
                              SizedBox(width: 130),

                              Text("Rate a driver",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20))),

                            ],
                          ),

                          SizedBox(height: 15),

                          Row(
                            children: [
                              SizedBox(width: 85),

                              RatingBar.builder(
                            initialRating: 0,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              setState(() {
                                _rating = rating;
                              });
                            },
                                itemSize: 34, // Set the size of the stars here
                          ),

                          ],),

                          SizedBox(height: 130),

                          Row(
                            children: [
                              SizedBox(width: 122),

                              Text("Rate a Vendor",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20))),

                            ],
                          ),

                          SizedBox(height: 15),

                          Row(
                            children: [
                              SizedBox(width: 85),

                              RatingBar.builder(
                                initialRating: 0,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color:  Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  setState(() {
                                    _rating = rating;
                                  });
                                },
                                itemSize: 34, // Set the size of the stars here
                              ),

                            ],),

                          SizedBox(height: 80),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 60.0),
                            child: ElevatedButton(

                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                minimumSize: Size(233, 40),
                                backgroundColor: Color.fromRGBO(32, 129, 239, 1),

                              ),
                              child: Text(
                                "Submit",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(251, 254, 255, 1)
                                  // Set text color to white here
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ],
                  )))),
    );
  }
}