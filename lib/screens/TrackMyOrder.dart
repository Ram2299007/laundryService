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
                      SizedBox(height:60 ),

                      Row(
                          children: [
                            SizedBox(width: 20),
                            Text("Track my order",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color.fromRGBO(15, 15, 20, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20))),

                          ]),

                      SizedBox(height: 15),

                      Row(

                          children: [
                            SizedBox(width: 20),
                            Text("Estimated delivery time : 20 Mins",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color.fromRGBO(15, 15, 20, 1),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14))),
                          ]),

                      SizedBox(height: 5),
                      Row(
                          children: [
                            SizedBox(width: 20),
                            Text("Order ID: 1234567",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color.fromRGBO(15, 15, 20, 1),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14))),

                          ]),

                      SizedBox(height: 5),
                      Row(
                          children: [
                            SizedBox(width: 20),
                            Text("Amount: SAR 48",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color.fromRGBO(15, 15, 20, 0.8),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14))),

                          ]),

                      SizedBox(height: 5),
                      Row(

                          children: [
                            SizedBox(width: 20),
                            Text("Wed May 17,2024",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color.fromRGBO(15, 15, 20, 0.7),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14))),

                          ]),

                      SizedBox(height: 40),
                      Column(
                        children: [

                          Row(

                              children: [
                                SizedBox(width: 30),
                                Image.asset(
                                  'assets/largecircle.png', // Path to your image
                                  width: 15, // Specify the width of the image
                                  height: 15, // Specify the height of the image
                                ),

                                SizedBox(width: 15),
                                Image.asset(
                                  'assets/orderplaced.png', // Path to your image
                                  width: 15, // Specify the width of the image
                                  height: 15, // Specify the height of the image
                                ),

                                SizedBox(width: 10),

                                Text("Order placed",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Color.fromRGBO(15, 15, 20, 1),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14))),


                              ]),
                          SizedBox(height: 3),

                          Row(

                              children: [
                                SizedBox(width: 36),
                                Image.asset(
                                  'assets/largecircle.png', // Path to your image
                                  width: 3, // Specify the width of the image
                                  height: 3, // Specify the height of the image
                                ),



                                SizedBox(width: 48),

                                Text("10:00 am",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Color.fromRGBO(15, 15, 20, 0.6),
                                            fontWeight: FontWeight.w300,
                                            fontSize: 10))),


                              ]),
                          SizedBox(height: 3),

                          Row(

                              children: [
                                SizedBox(width: 36),
                                Image.asset(
                                  'assets/largecircle.png', // Path to your image
                                  width: 3, // Specify the width of the image
                                  height: 3, // Specify the height of the image
                                ),
                              ]),
                          SizedBox(height: 8),

                          Row(

                              children: [
                                SizedBox(width: 36),
                                Image.asset(
                                  'assets/largecircle.png', // Path to your image
                                  width: 3, // Specify the width of the image
                                  height: 3, // Specify the height of the image
                                ),

                              ]),
                        ],
                      ),

                      SizedBox(height: 10),
                      Column(
                        children: [

                          Row(

                              children: [
                                SizedBox(width: 30),
                                Image.asset(
                                  'assets/largecircle.png', // Path to your image
                                  width: 15, // Specify the width of the image
                                  height: 15, // Specify the height of the image
                                ),

                                SizedBox(width: 15),
                                Image.asset(
                                  'assets/pickup.png', // Path to your image
                                  width: 15, // Specify the width of the image
                                  height: 15, // Specify the height of the image
                                ),

                                SizedBox(width: 10),

                                Text("Pickup partner on the way",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Color.fromRGBO(15, 15, 20, 1),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14))),


                              ]),
                          SizedBox(height: 3),

                          Row(

                              children: [
                                SizedBox(width: 36),
                                Image.asset(
                                  'assets/largecircle.png', // Path to your image
                                  width: 3, // Specify the width of the image
                                  height: 3, // Specify the height of the image
                                ),



                                SizedBox(width: 48),

                                Text("10:00 am",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Color.fromRGBO(15, 15, 20, 0.6),
                                            fontWeight: FontWeight.w300,
                                            fontSize: 10))),


                              ]),
                          SizedBox(height: 3),

                          Row(

                              children: [
                                SizedBox(width: 36),
                                Image.asset(
                                  'assets/largecircle.png', // Path to your image
                                  width: 3, // Specify the width of the image
                                  height: 3, // Specify the height of the image
                                ),
                              ]),
                          SizedBox(height: 8),

                          Row(

                              children: [
                                SizedBox(width: 36),
                                Image.asset(
                                  'assets/largecircle.png', // Path to your image
                                  width: 3, // Specify the width of the image
                                  height: 3, // Specify the height of the image
                                ),

                              ]),
                        ],
                      ),

                      SizedBox(height: 10),
                      Column(
                        children: [

                          Row(

                              children: [
                                SizedBox(width: 30),
                                Image.asset(
                                  'assets/largecircle.png', // Path to your image
                                  width: 15, // Specify the width of the image
                                  height: 15, // Specify the height of the image
                                ),

                                SizedBox(width: 15),
                                Image.asset(
                                  'assets/orderpickup.png', // Path to your image
                                  width: 15, // Specify the width of the image
                                  height: 15, // Specify the height of the image
                                ),

                                SizedBox(width: 10),

                                Text("Order picked up",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Color.fromRGBO(15, 15, 20, 1),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14))),


                              ]),
                          SizedBox(height: 3),

                          Row(

                              children: [
                                SizedBox(width: 36),
                                Image.asset(
                                  'assets/largecircle.png', // Path to your image
                                  width: 3, // Specify the width of the image
                                  height: 3, // Specify the height of the image
                                ),



                                SizedBox(width: 48),

                                Text("10:00 am",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Color.fromRGBO(15, 15, 20, 0.6),
                                            fontWeight: FontWeight.w300,
                                            fontSize: 10))),


                              ]),
                          SizedBox(height: 3),

                          Row(

                              children: [
                                SizedBox(width: 36),
                                Image.asset(
                                  'assets/largecircle.png', // Path to your image
                                  width: 3, // Specify the width of the image
                                  height: 3, // Specify the height of the image
                                ),
                              ]),
                          SizedBox(height: 8),

                          Row(

                              children: [
                                SizedBox(width: 36),
                                Image.asset(
                                  'assets/greycircle.png', // Path to your image
                                  width: 3, // Specify the width of the image
                                  height: 3, // Specify the height of the image
                                ),

                              ]),
                        ],
                      ),

                      SizedBox(height: 10),
                      Column(
                        children: [

                          Row(

                              children: [
                                SizedBox(width: 30),
                                Image.asset(
                                  'assets/greycircle.png', // Path to your image
                                  width: 15, // Specify the width of the image
                                  height: 15, // Specify the height of the image
                                ),

                                SizedBox(width: 15),
                                Image.asset(
                                  'assets/deliverylaundry.png', // Path to your image
                                  width: 15, // Specify the width of the image
                                  height: 15, // Specify the height of the image
                                ),

                                SizedBox(width: 10),

                                Text("Delivered to laundry",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Color.fromRGBO(15, 15, 20, 1),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14))),


                              ]),
                          SizedBox(height: 3),

                          Row(

                              children: [
                                SizedBox(width: 36),
                                Image.asset(
                                  'assets/greycircle.png', // Path to your image
                                  width: 3, // Specify the width of the image
                                  height: 3, // Specify the height of the image
                                ),



                                SizedBox(width: 48),

                                Text("10:00 am",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Color.fromRGBO(15, 15, 20, 0.6),
                                            fontWeight: FontWeight.w300,
                                            fontSize: 10))),


                              ]),
                          SizedBox(height: 3),

                          Row(

                              children: [
                                SizedBox(width: 36),
                                Image.asset(
                                  'assets/greycircle.png', // Path to your image
                                  width: 3, // Specify the width of the image
                                  height: 3, // Specify the height of the image
                                ),
                              ]),
                          SizedBox(height: 8),

                          Row(

                              children: [
                                SizedBox(width: 36),
                                Image.asset(
                                  'assets/greycircle.png', // Path to your image
                                  width: 3, // Specify the width of the image
                                  height: 3, // Specify the height of the image
                                ),

                              ]),
                        ],
                      ),

                      SizedBox(height: 10),
                      Column(
                        children: [

                          Row(

                              children: [
                                SizedBox(width: 30),
                                Image.asset(
                                  'assets/greycircle.png', // Path to your image
                                  width: 15, // Specify the width of the image
                                  height: 15, // Specify the height of the image
                                ),

                                SizedBox(width: 15),
                                Image.asset(
                                  'assets/laundrypro.png', // Path to your image
                                  width: 15, // Specify the width of the image
                                  height: 15, // Specify the height of the image
                                ),

                                SizedBox(width: 10),

                                Text("Laundry Processing",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Color.fromRGBO(15, 15, 20, 1),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14))),


                              ]),
                          SizedBox(height: 3),

                          Row(

                              children: [
                                SizedBox(width: 36),
                                Image.asset(
                                  'assets/greycircle.png', // Path to your image
                                  width: 3, // Specify the width of the image
                                  height: 3, // Specify the height of the image
                                ),



                                SizedBox(width: 48),

                                Text("10:00 am",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Color.fromRGBO(15, 15, 20, 0.6),
                                            fontWeight: FontWeight.w300,
                                            fontSize: 10))),


                              ]),
                          SizedBox(height: 3),

                          Row(

                              children: [
                                SizedBox(width: 36),
                                Image.asset(
                                  'assets/greycircle.png', // Path to your image
                                  width: 3, // Specify the width of the image
                                  height: 3, // Specify the height of the image
                                ),
                              ]),
                          SizedBox(height: 8),

                          Row(

                              children: [
                                SizedBox(width: 36),
                                Image.asset(
                                  'assets/greycircle.png', // Path to your image
                                  width: 3, // Specify the width of the image
                                  height: 3, // Specify the height of the image
                                ),

                              ]),
                        ],
                      ),

                      SizedBox(height: 10),
                      Column(
                        children: [

                          Row(

                              children: [
                                SizedBox(width: 30),
                                Image.asset(
                                  'assets/greycircle.png', // Path to your image
                                  width: 15, // Specify the width of the image
                                  height: 15, // Specify the height of the image
                                ),


                                SizedBox(width: 40),

                                Text("Ready for dispatch",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Color.fromRGBO(15, 15, 20, 1),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14))),


                              ]),
                          SizedBox(height: 3),

                          Row(

                              children: [
                                SizedBox(width: 36),
                                Image.asset(
                                  'assets/greycircle.png', // Path to your image
                                  width: 3, // Specify the width of the image
                                  height: 3, // Specify the height of the image
                                ),



                                SizedBox(width: 48),

                                Text("10:00 am",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Color.fromRGBO(15, 15, 20, 0.6),
                                            fontWeight: FontWeight.w300,
                                            fontSize: 10))),


                              ]),
                          SizedBox(height: 3),

                          Row(

                              children: [
                                SizedBox(width: 36),
                                Image.asset(
                                  'assets/greycircle.png', // Path to your image
                                  width: 3, // Specify the width of the image
                                  height: 3, // Specify the height of the image
                                ),
                              ]),
                          SizedBox(height: 8),

                          Row(

                              children: [
                                SizedBox(width: 36),
                                Image.asset(
                                  'assets/greycircle.png', // Path to your image
                                  width: 3, // Specify the width of the image
                                  height: 3, // Specify the height of the image
                                ),

                              ]),
                        ],
                      ),

                      SizedBox(height: 10),
                      Column(
                        children: [

                          Row(

                              children: [
                                SizedBox(width: 30),
                                Image.asset(
                                  'assets/greycircle.png', // Path to your image
                                  width: 15, // Specify the width of the image
                                  height: 15, // Specify the height of the image
                                ),


                                SizedBox(width: 40),

                                Text("Scheduled delivery",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Color.fromRGBO(15, 15, 20, 1),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14))),


                              ]),
                          SizedBox(height: 3),

                          Row(

                              children: [
                                SizedBox(width: 36),
                                Image.asset(
                                  'assets/greycircle.png', // Path to your image
                                  width: 3, // Specify the width of the image
                                  height: 3, // Specify the height of the image
                                ),



                                SizedBox(width: 48),

                                Text("10:00 am",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Color.fromRGBO(15, 15, 20, 0.6),
                                            fontWeight: FontWeight.w300,
                                            fontSize: 10))),


                              ]),
                          SizedBox(height: 3),

                          Row(

                              children: [
                                SizedBox(width: 36),
                                Image.asset(
                                  'assets/greycircle.png', // Path to your image
                                  width: 3, // Specify the width of the image
                                  height: 3, // Specify the height of the image
                                ),
                              ]),
                          SizedBox(height: 8),

                          Row(

                              children: [
                                SizedBox(width: 36),
                                Image.asset(
                                  'assets/greycircle.png', // Path to your image
                                  width: 3, // Specify the width of the image
                                  height: 3, // Specify the height of the image
                                ),

                              ]),
                        ],
                      ),

                      SizedBox(height: 10),
                      Column(
                        children: [

                          Row(

                              children: [
                                SizedBox(width: 30),
                                Image.asset(
                                  'assets/greycircle.png', // Path to your image
                                  width: 15, // Specify the width of the image
                                  height: 15, // Specify the height of the image
                                ),


                                SizedBox(width: 40),

                                Text("Delivery partner on the way",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Color.fromRGBO(15, 15, 20, 1),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14))),


                              ]),
                          SizedBox(height: 3),

                          Row(

                              children: [
                                SizedBox(width: 36),
                                Image.asset(
                                  'assets/greycircle.png', // Path to your image
                                  width: 3, // Specify the width of the image
                                  height: 3, // Specify the height of the image
                                ),



                                SizedBox(width: 48),

                                Text("10:00 am",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Color.fromRGBO(15, 15, 20, 0.6),
                                            fontWeight: FontWeight.w300,
                                            fontSize: 10))),


                              ]),
                          SizedBox(height: 3),

                          Row(

                              children: [
                                SizedBox(width: 36),
                                Image.asset(
                                  'assets/greycircle.png', // Path to your image
                                  width: 3, // Specify the width of the image
                                  height: 3, // Specify the height of the image
                                ),
                              ]),
                          SizedBox(height: 8),

                          Row(

                              children: [
                                SizedBox(width: 36),
                                Image.asset(
                                  'assets/greycircle.png', // Path to your image
                                  width: 3, // Specify the width of the image
                                  height: 3, // Specify the height of the image
                                ),

                              ]),
                        ],
                      ),

                      SizedBox(height: 10),
                      Column(
                        children: [

                          Row(

                              children: [
                                SizedBox(width: 30),
                                Image.asset(
                                  'assets/greycircle.png', // Path to your image
                                  width: 15, // Specify the width of the image
                                  height: 15, // Specify the height of the image
                                ),


                                SizedBox(width: 40),

                                Text("Delivered",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Color.fromRGBO(15, 15, 20, 1),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14))),


                              ]),

                          SizedBox(height: 3),
                          Row(
                              children: [
                                SizedBox(width: 85),

                                Text("10:00 am",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Color.fromRGBO(15, 15, 20, 0.6),
                                            fontWeight: FontWeight.w300,
                                            fontSize: 10))),
                              ]),

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
                            "Track delivery partner",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(251, 254, 255, 1)
                            // Set text color to white here
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20)

                    ],
                  )))),
    );
  }
}
