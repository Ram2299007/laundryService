import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'MainScreen.dart';

class ConnectingToDriver extends StatefulWidget {
  const ConnectingToDriver({super.key});

  @override
  State<ConnectingToDriver> createState() => _ConnectingToDriverState();
}

class _ConnectingToDriverState extends State<ConnectingToDriver> {
  final CameraPosition initialPosition = CameraPosition(target:LatLng( 24.903623, 67.198367));
  double _progress = 0.0;

  void _startProgress() async {
    setState(() {
      _progress = 0.0;
    });

    for (int i = 0; i <= 100; i++) {
      await Future.delayed(Duration(milliseconds: 50));
      setState(() {
        _progress = i / 100;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: SafeArea(
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

                      SizedBox(height:10),
                      SizedBox(
                          width: 400, // full width of the parent
                          height: 462, // height of the map
                          child:  GoogleMap(initialCameraPosition: initialPosition,
                              mapType: MapType.normal)
                      ),



         SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 25),
                Row(
                  children: [
                    SizedBox(width: 12),

                    SizedBox(
                      width: 122, // Set the desired width here
                      height: 3, // Set the desired height here
                      child: LinearProgressIndicator(
                        value: _progress,
                        backgroundColor: Color.fromRGBO(32, 129, 239, 1),
                        valueColor: AlwaysStoppedAnimation<Color>(Color.fromRGBO(180, 180, 180, 1)),
                      ),
                    ),
                    SizedBox(width: 8),

                    SizedBox(
                      width: 111, // Set the desired width here
                      height: 3, // Set the desired height here
                      child: LinearProgressIndicator(
                        value: _progress,
                        backgroundColor: Color.fromRGBO(180, 180, 180, 1),
                        valueColor: AlwaysStoppedAnimation<Color>(Color.fromRGBO(32, 129, 239, 1)),
                      ),
                    ),

                    SizedBox(width: 8),

                    SizedBox(
                      width: 111, // Set the desired width here
                      height: 3, // Set the desired height here
                      child: LinearProgressIndicator(
                        value: _progress,
                        backgroundColor: Color.fromRGBO(180, 180, 180, 1),
                        valueColor: AlwaysStoppedAnimation<Color>(Color.fromRGBO(32, 129, 239, 1)),
                      ),
                    ),

                  ],
                ),

              ],
            ),
          ),
        ),
                      SizedBox(height: 16),

                      Row(
                        children: [
                          SizedBox(width: 17),

                          Text(
                            "Connecting to driver", // Replace with your country code
                            style: GoogleFonts.poppins(
                                fontSize: 24,
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),

                    ])))));
  }
}
