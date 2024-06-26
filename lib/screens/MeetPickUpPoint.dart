import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'MainScreen.dart';

class MeetPickUpPoint extends StatefulWidget {
  const MeetPickUpPoint({super.key});

  @override
  State<MeetPickUpPoint> createState() => _MeetPickUpPointState();
}

class _MeetPickUpPointState extends State<MeetPickUpPoint> {
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

                      SizedBox(height:15),

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

                      SizedBox(height:15),

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
                          SizedBox(width: 160),
                          Image.asset(
                            'assets/two.png',
                            // Path to your image
                            width: 26,
                            // Specify the width of the image
                            height: 27, // Specify the height of the image
                          ),

                          SizedBox(width: 10),
                          Image.asset(
                            'assets/six.png',
                            // Path to your image
                            width: 26,
                            // Specify the width of the image
                            height: 27, // Specify the height of the image
                          ),

                          SizedBox(width: 10),
                          Image.asset(
                            'assets/two.png',
                            // Path to your image
                            width: 26,
                            // Specify the width of the image
                            height: 27, // Specify the height of the image
                          ),

                          SizedBox(width: 10),
                          Image.asset(
                            'assets/onw.png',
                            // Path to your image
                            width: 26,
                            // Specify the width of the image
                            height: 27, // Specify the height of the image
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

                      SizedBox(height:30),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width:10),

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
                      SizedBox(height: 50)

                    ],
                  )))),

    );
  }
}
