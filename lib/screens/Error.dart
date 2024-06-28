import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'MainScreen.dart';

class Error extends StatefulWidget {
  const Error({super.key});

  @override
  State<Error> createState() => _ErrorState();
}

class _ErrorState extends State<Error> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black12,
        body:   SafeArea(
            child: SingleChildScrollView(
                child: Center(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.arrow_back_ios_new,
                                  color: Color.fromRGBO(15, 15, 20, 1),
                                  // Set the color of the icon
                                  size: 14.0,
                                  // Set the size of the icon
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

                        SizedBox(height:200 ),
                        Stack(
                          clipBehavior: Clip.none, children: [
                        Container(
                            width: 361,
                            height: 256,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4), // Set the border radius here
                            ),

                            child:
                                  Column(
                                    children: [
                                      Container(
                                        width: 361,
                                        height: 140,
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(255, 67, 67, 1),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4),
                                            topRight: Radius.circular(4),
                                          ),
                                        ),
                                        child: Center(

                                          child: Column(
                                            children: [
                                              SizedBox(height: 15),

                                              Row(

                                                children: [
                                                  SizedBox(width: 140),
                                                  Text(
                                                    'Error',
                                                    style: TextStyle(fontSize: 24, color: Color.fromRGBO(255, 255, 255, 1),
                                                      fontWeight: FontWeight.w500,

                                                    ),
                                                  ),
                                                  SizedBox(width: 5),

                                                  Image.asset(
                                                    "assets/y.png", // Path to your arrow image
                                                    width: 22,
                                                    height: 22,
                                                  ),

                                                ],
                                              ),

                                              Row(

                                                children: [
                                                  SizedBox(width: 160),
                                                  Image.asset(
                                                    "assets/eyes.png", // Path to your arrow image
                                                    width: 40,
                                                    height: 40,
                                                  ),
                                                ],
                                              ),

                                              Row(

                                                children: [
                                                  SizedBox(width: 60),
                                                  Text(
                                                    'Couldnt complete payment ',
                                                    style: TextStyle(fontSize: 20,
                                                        color: Color.fromRGBO(255, 255, 255, 1),
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                  SizedBox(height: 50),
                                                ],
                                              ),
                                            ],
                                          ),

                                        ),
                                      ),
                                      Container(
                                        width: 361,
                                        height: 116,
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(255, 255, 255, 1),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(4),
                                            bottomRight: Radius.circular(4),
                                          ),
                                        ),
                                        child: Center(
                                          child:
                                          Column(
                                            children: [
                                              SizedBox(height: 20),
                                              Row(

                                                children: [
                                                  SizedBox(width: 92),
                                                  Text(
                                                    'Please fill your wallet',
                                                    style: TextStyle(fontSize: 18, color: Color.fromRGBO(0, 0, 0, 1),
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),

                                              SizedBox(height: 10),

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
                                                    "Fill Now",
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

                                        ),
                                      ),
                                    ],
                                  ),
                                  ),
                          Positioned(
                            top: -20, // Adjust the position as needed
                            left: (773 / 2) - (100 / 2), // Centers the image horizontally over the container
                            child:
                            Image.asset(
                              "assets/c.png", // Path to your arrow image
                              width: 30,
                              height: 30,
                            ),

                          ),
                        ] )

                        ],
                    )
                )
            )
        ),
    );
  }
}
