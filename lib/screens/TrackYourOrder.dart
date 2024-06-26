import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TrackYourOrder extends StatefulWidget {
  const TrackYourOrder({super.key});

  @override
  State<TrackYourOrder> createState() => _TrackYourOrderState();
}

class _TrackYourOrderState extends State<TrackYourOrder> {

  final CameraPosition initialPosition = CameraPosition(target:LatLng( 24.903623, 67.198367));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     body:SafeArea(
       child: SingleChildScrollView(
         child: Center(
           child: Column(
             children: [

               SizedBox(height: 40),
               SizedBox(
                   width: 393, // full width of the parent
                   height: 456, // height of the map
                   child:  Stack(
                       children: [GoogleMap(initialCameraPosition: initialPosition,
                           mapType: MapType.normal),

                         Positioned(
                           top: 8,
                           left: 330,
                           child:
                           Image.asset(
                             'assets/refres.png', // Path to your image
                             width: 40, // Specify the width of the image
                             height: 40, // Specify the height of the image
                           ),

                         )])
               ),

               Column(
                   children: [
                     SizedBox(height: 20),
                     Row(
                         children: [
                           SizedBox(width: 15),
                           Text("Track your order",
                               style: GoogleFonts.poppins(
                                   textStyle: const TextStyle(
                                       color: Color.fromRGBO(15, 15, 20, 1),
                                       fontWeight: FontWeight.w500,
                                       fontSize: 15))),

                         ]),

                     SizedBox(height: 4),
                     SizedBox(width: 10),

                     SizedBox(
                       width: 420,  // specify the desired width
                       height: 70,
                       child: Padding(
                         padding: const EdgeInsets.all(15),
                         child: Container(
                           padding: EdgeInsets.symmetric(horizontal: 9.0), // Adding internal padding to the container
                           decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(4),
                             border: Border.all(
                               color: Color.fromRGBO(0, 0, 0, 0.12), // Border color
                               width:1, // Border width
                             ),
                           ),

                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [

                               Image.asset(
                                 'assets/deliveryboy.png', // Path to your image
                                 width: 34, // Specify the width of the image
                                 height: 33.8, // Specify the height of the image
                               ),
                               SizedBox(width: 10),

                               Text("Arriving in 10 mins to your location",
                                   style: GoogleFonts.poppins(
                                       textStyle: const TextStyle(
                                           color: Color.fromRGBO(15, 15, 20, 1),
                                           fontWeight: FontWeight.w400,
                                           fontSize: 16))),

                             ],
                           ),
                         ),
                       ),
                     ),

                   ]
               ),
               Column(
                 children: [
                   SizedBox(height:18 ),

                   Row(
                       children: [
                         SizedBox(width: 15),
                         Text("Order ID: 1234567",
                             style: GoogleFonts.poppins(
                                 textStyle: const TextStyle(
                                     color: Color.fromRGBO(15, 15, 20, 1),
                                     fontWeight: FontWeight.w400,
                                     fontSize: 15))),

                       ]),

                   SizedBox(height: 5),

                   Row(

                       children: [
                         SizedBox(width: 15),
                         Text("Status: On the Way",
                             style: GoogleFonts.poppins(
                                 textStyle: const TextStyle(
                                     color: Color.fromRGBO(15, 15, 20, 1),
                                     fontWeight: FontWeight.w400,
                                     fontSize: 15))),
                       ]),

                   SizedBox(height: 5),
                   Row(
                       children: [
                         SizedBox(width: 15),
                         Text("Expected Delivery: May 31 2024 & 5:30 pm",
                             style: GoogleFonts.poppins(
                                 textStyle: const TextStyle(
                                     color: Color.fromRGBO(0, 0, 0, 0.6),
                                     fontWeight: FontWeight.w400,
                                     fontSize: 14))),

                       ]),

                   SizedBox(height: 20),
                   Row(
                       children: [

                         SizedBox(width: 15),
                         Image.asset(
                           'assets/person1.png', // Path to your image
                           width: 18, // Specify the width of the image
                           height: 18, // Specify the height of the image
                         ),

                         SizedBox(width: 10),
                         Text("Delivery Boy: Deepak S.",
                             style: GoogleFonts.poppins(
                                 textStyle: const TextStyle(
                                     color: Color.fromRGBO(0, 0, 0, 1),
                                     fontWeight: FontWeight.w400,
                                     fontSize: 12))),

                       ]),

                   SizedBox(height: 10),
                   Row(

                       children: [
                         SizedBox(width: 15),
                         Image.asset(
                           'assets/phone.png', // Path to your image
                           width: 18, // Specify the width of the image
                           height: 18, // Specify the height of the image
                         ),

                         SizedBox(width: 10),

                         Text("Contact: 8465213458",
                             style: GoogleFonts.poppins(
                                 textStyle: const TextStyle(
                                     color: Color.fromRGBO(0, 0, 0, 1),
                                     fontWeight: FontWeight.w400,
                                     fontSize: 12))),
                       ]),
                   SizedBox(height: 20),

                   Column(
                     children: [

                       Row(

                           children: [
                             SizedBox(width: 15),


                             Text("Status Updates:",
                                 style: GoogleFonts.poppins(
                                     textStyle: const TextStyle(
                                         color: Color.fromRGBO(15, 15, 20, 1),
                                         fontWeight: FontWeight.w500,
                                         fontSize: 14))),

                             SizedBox(width: 10),
                             Image.asset(
                               'assets/largecircle.png', // Path to your image
                               width: 15, // Specify the width of the image
                               height: 15, // Specify the height of the image
                             ),

                             SizedBox(width: 10),

                             Text("1:00 PM Order Picked Up",
                                 style: GoogleFonts.poppins(
                                     textStyle: const TextStyle(
                                         color: Color.fromRGBO(15, 15, 20, 1),
                                         fontWeight: FontWeight.w400,
                                         fontSize: 12))),


                           ]),
                       SizedBox(height: 3),

                       Row(
                           children: [
                             SizedBox(width:146),
                             Image.asset(
                               'assets/largecircle.png', // Path to your image
                               width: 3, // Specify the width of the image
                               height: 3, // Specify the height of the image
                             ),
                           ]),
                       SizedBox(height: 5),

                       Row(

                           children: [
                             SizedBox(width: 146),
                             Image.asset(
                               'assets/largecircle.png', // Path to your image
                               width: 3, // Specify the width of the image
                               height: 3, // Specify the height of the image
                             ),
                           ]),
                       SizedBox(height:5),

                       Row(

                           children: [
                             SizedBox(width: 146),
                             Image.asset(
                               'assets/largecircle.png', // Path to your image
                               width: 3, // Specify the width of the image
                               height: 3, // Specify the height of the image
                             ),

                           ]),
                     ],
                   ),
                   SizedBox(height: 4),

                   Column(
                     children: [

                       Row(

                           children: [

                             SizedBox(width: 140),
                             Image.asset(
                               'assets/largecircle.png', // Path to your image
                               width: 15, // Specify the width of the image
                               height: 15, // Specify the height of the image
                             ),

                             SizedBox(width: 10),

                             Text("1:30 PM On the way to Laundry",
                                 style: GoogleFonts.poppins(
                                     textStyle: const TextStyle(
                                         color: Color.fromRGBO(15, 15, 20, 1),
                                         fontWeight: FontWeight.w400,
                                         fontSize: 12))),


                           ]),
                       SizedBox(height: 4),

                       Row(
                           children: [
                             SizedBox(width:146),
                             Image.asset(
                               'assets/largecircle.png', // Path to your image
                               width: 3, // Specify the width of the image
                               height: 3, // Specify the height of the image
                             ),
                           ]),
                       SizedBox(height: 5),

                       Row(

                           children: [
                             SizedBox(width: 146),
                             Image.asset(
                               'assets/largecircle.png', // Path to your image
                               width: 3, // Specify the width of the image
                               height: 3, // Specify the height of the image
                             ),
                           ]),
                       SizedBox(height:5),

                       Row(

                           children: [
                             SizedBox(width: 146),
                             Image.asset(
                               'assets/largecircle.png', // Path to your image
                               width: 3, // Specify the width of the image
                               height: 3, // Specify the height of the image
                             ),

                           ]),
                     ],
                   ),

                   SizedBox(height: 4),

                   Column(
                     children: [

                       Row(

                           children: [

                             SizedBox(width: 140),
                             Image.asset(
                               'assets/largecircle.png', // Path to your image
                               width: 15, // Specify the width of the image
                               height: 15, // Specify the height of the image
                             ),

                             SizedBox(width: 10),

                             Text("2:00 PM Laundry in Process",
                                 style: GoogleFonts.poppins(
                                     textStyle: const TextStyle(
                                         color: Color.fromRGBO(15, 15, 20, 1),
                                         fontWeight: FontWeight.w400,
                                         fontSize: 12))),


                           ]),
                       SizedBox(height: 5),

                       Row(
                           children: [
                             SizedBox(width:146),
                             Image.asset(
                               'assets/largecircle.png', // Path to your image
                               width: 3, // Specify the width of the image
                               height: 3, // Specify the height of the image
                             ),
                           ]),
                       SizedBox(height: 5),

                       Row(

                           children: [
                             SizedBox(width: 146),
                             Image.asset(
                               'assets/largecircle.png', // Path to your image
                               width: 3, // Specify the width of the image
                               height: 3, // Specify the height of the image
                             ),
                           ]),
                       SizedBox(height:5),

                       Row(

                           children: [
                             SizedBox(width: 146),
                             Image.asset(
                               'assets/largecircle.png', // Path to your image
                               width: 3, // Specify the width of the image
                               height: 3, // Specify the height of the image
                             ),

                           ]),
                     ],
                   ),

                   SizedBox(height: 4),

                   Column(
                     children: [

                       Row(

                           children: [

                             SizedBox(width: 140),
                             Image.asset(
                               'assets/largecircle.png', // Path to your image
                               width: 15, // Specify the width of the image
                               height: 15, // Specify the height of the image
                             ),

                             SizedBox(width: 10),

                             Text("4:00 PM On the Way to Delivery",
                                 style: GoogleFonts.poppins(
                                     textStyle: const TextStyle(
                                         color: Color.fromRGBO(15, 15, 20, 1),
                                         fontWeight: FontWeight.w400,
                                         fontSize: 12))),


                           ]),
                       SizedBox(height: 4),

                       Row(
                           children: [
                             SizedBox(width:146),
                             Image.asset(
                               'assets/largecircle.png', // Path to your image
                               width: 3, // Specify the width of the image
                               height: 3, // Specify the height of the image
                             ),
                           ]),
                       SizedBox(height: 5),

                       Row(

                           children: [
                             SizedBox(width: 146),
                             Image.asset(
                               'assets/largecircle.png', // Path to your image
                               width: 3, // Specify the width of the image
                               height: 3, // Specify the height of the image
                             ),
                           ]),
                       SizedBox(height:5),

                       Row(

                           children: [
                             SizedBox(width: 146),
                             Image.asset(
                               'assets/gry.png', // Path to your image
                               width: 3, // Specify the width of the image
                               height: 3, // Specify the height of the image
                             ),

                           ]),
                     ],
                   ),

                   SizedBox(height: 4),

                   Column(
                     children: [

                       Row(
                           children: [
                             SizedBox(width: 140),
                             Image.asset(
                               'assets/gry.png', // Path to your image
                               width: 15, // Specify the width of the image
                               height: 15, // Specify the height of the image
                             ),

                             SizedBox(width: 10),

                             Text("5:30 PM Delivered",
                                 style: GoogleFonts.poppins(
                                     textStyle: const TextStyle(
                                         color: Color.fromRGBO(15, 15, 20, 1),
                                         fontWeight: FontWeight.w400,
                                         fontSize: 12))),


                           ]),

                       SizedBox(height: 30),

                     ],
                   ),

                 ],
           ),


         ]),
       ),
     ),

    ));
  }
}
