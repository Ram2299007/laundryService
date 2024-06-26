import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'MainScreen.dart';

class MeetPickUpPoint1 extends StatefulWidget {
  const MeetPickUpPoint1({super.key});

  @override
  State<MeetPickUpPoint1> createState() => _MeetPickUpPoint1State();
}

class _MeetPickUpPoint1State extends State<MeetPickUpPoint1> {
  final CameraPosition initialPosition = CameraPosition(target:LatLng( 24.903623, 67.198367));

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
                                size: 14.0,         // Set the size of the icon
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

                      SizedBox(height:10),
                      SizedBox(
                          width: 393, // full width of the parent
                          height: 456, // height of the map
                          child:  Stack(
                              children: [GoogleMap(initialCameraPosition: initialPosition,
                                  mapType: MapType.normal),

                                Positioned(
                                  top: 20,
                                  child: Container(
                                    width: 393,
                                    height: 93,
                                    color: Color.fromRGBO(250, 250, 250, 0.68),
                                    child: Column(
                                      children: [
                                        SizedBox(height: 11),
                                        SizedBox(width: 13),
                                        Row(
                                          children: [
                                            SizedBox(height: 10),
                                            SizedBox(width: 20),
                                            Text(
                                              'Your driver is on the way',
                                              style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                  color: Color.fromRGBO(0, 0, 0, 1),
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),

                                          ],
                                        ),

                                        SizedBox(height: 10),
                                        SizedBox(width: 13),// Space between rows
                                        Row(
                                          children: [
                                            SizedBox(height: 10),
                                            SizedBox(width: 20),
                                            Text(
                                              'Toyota Corolla',
                                              style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                  color: Color.fromRGBO(0, 0, 0, 1),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),

                                            SizedBox(width: 20),
                                            SizedBox(height: 20),

                                            Image.asset(
                                              "assets/tnj.png", // Path to your arrow image
                                              width: 68,
                                              height: 37.78,
                                            ),


                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )])
                      ),

                      SizedBox(height:30),

                      Row(
                        children: [
                          SizedBox(width:13),

                          Text(
                            "Meet at the pickup point", // Replace with your country code
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),

                      SizedBox(height:7),

                      Container(
                        height: 1.0,
                        // Adjust height as needed
                        width: 361,
                        // Expands to fill parent width
                        color: Color.fromRGBO(15, 15, 20, 0.1),
                      ),

                      SizedBox(height:10),

                      Row(
                        children: [
                          SizedBox(width:13),

                          Text(
                            "Driver will be at your location", // Replace with your country code
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontWeight: FontWeight.w300),
                          ),
                          SizedBox(width: 65),
                          Image.asset(
                            'assets/time.png',
                            // Path to your image
                            width: 53,
                            // Specify the width of the image
                            height: 41, // Specify the height of the image
                          ),
                        ],
                      ),

                      SizedBox(height:7),

                      Container(
                        height: 1.0,
                        // Adjust height as needed
                        width: 361,
                        // Expands to fill parent width
                        color: Color.fromRGBO(15, 15, 20, 0.1),
                      ),

                      SizedBox(height:12),

                      Row(
                        children: [
                          SizedBox(width:13),

                          Text(
                            "Your OTP", // Replace with your country code
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontWeight: FontWeight.w300),
                          ),
                          SizedBox(width: 120),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 1.0),
                            child:
                            Container(
                              width: 33,
                              height: 32,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(249, 249, 249, 1),
                                borderRadius: BorderRadius.circular(4),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25).withOpacity(0.1),
                                    offset: Offset(0, 10),
                                    blurRadius: 10,
                                  ),
                                ],
                                border: Border.all( // Add this line to specify the border
                                  color: Color.fromRGBO(15, 15, 20, 0.1), // Choose the color of the border
                                  width: 1.0, // Choose the width of the border
                                ),
                              ),
                            )
                          ),

                          SizedBox(width: 10),
                          Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 1.0),
                              child:
                              Container(
                                width: 33,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(249, 249, 249, 1),
                                  borderRadius: BorderRadius.circular(4),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.25).withOpacity(0.1),
                                      offset: Offset(0, 10),
                                      blurRadius: 10,
                                    ),
                                  ],
                                  border: Border.all( // Add this line to specify the border
                                    color: Color.fromRGBO(15, 15, 20, 0.1), // Choose the color of the border
                                    width: 1.0, // Choose the width of the border
                                  ),
                                ),
                              )
                          ),

                          SizedBox(width: 10),
                          Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 1.0),
                              child:
                              Container(
                                width: 33,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(249, 249, 249, 1),
                                  borderRadius: BorderRadius.circular(4),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.25).withOpacity(0.1),
                                      offset: Offset(0, 10),
                                      blurRadius: 10,
                                    ),
                                  ],
                                  border: Border.all( // Add this line to specify the border
                                    color: Color.fromRGBO(15, 15, 20, 0.1), // Choose the color of the border
                                    width: 1.0, // Choose the width of the border
                                  ),
                                ),
                              )
                          ),

                          SizedBox(width: 10),
                          Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 1.0),
                              child:
                              Container(
                                width: 33,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(249, 249, 249, 1),
                                  borderRadius: BorderRadius.circular(4),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.25).withOpacity(0.1),
                                      offset: Offset(0, 10),
                                      blurRadius: 10,
                                    ),
                                  ],
                                  border: Border.all( // Add this line to specify the border
                                    color: Color.fromRGBO(15, 15, 20, 0.1), // Choose the color of the border
                                    width: 1.0, // Choose the width of the border
                                  ),
                                ),
                              )
                          ),
                        ],
                      ),

                      SizedBox(height:12),

                      Container(
                        height: 1.0,
                        // Adjust height as needed
                        width: 361,
                        // Expands to fill parent width
                        color: Color.fromRGBO(15, 15, 20, 0.1),
                      ),

                      SizedBox(height:15),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 1.0),
                            child:
                            Container(

                              decoration: BoxDecoration(

                                color: Color.fromRGBO(231, 231, 231, 1),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              height: 40,
                              width: 306,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  SizedBox(width: 10),

                                  Expanded(
                                    child:

                                    Padding(
                                      padding: EdgeInsets.only(bottom: 11), // Adjust the value as needed

                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: "Message driver",
                                          hintStyle: GoogleFonts.poppins(
                                              textStyle:
                                              const TextStyle(fontSize: 12,color: Color.fromRGBO(15, 15, 20, 0.6),fontWeight:  FontWeight.w400,)
                                          ),
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                        ),
                                        style: GoogleFonts.poppins(
                                            textStyle:
                                            const TextStyle(fontSize: 13,color: Colors.black,fontWeight:  FontWeight.w400,)),
                                        keyboardType: TextInputType.phone,

                                      ),
                                    ),

                                  ),


                                ],
                              ),

                            ),
                          ),

                          SizedBox(width: 10),

                          Image.asset(
                            'assets/call.png',
                            // Path to your image
                            width: 40,
                            // Specify the width of the image
                            height: 40, // Specify the height of the image
                          ),

                        ],
                      ),
                      SizedBox(height: 30),

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
                            "Continue",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(251, 254, 255, 1)
                              // Set text color to white here
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40),


                    ],
                  )))),

    );
  }
}
