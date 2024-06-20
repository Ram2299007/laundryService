import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.white,
        body:   SafeArea(

            child: SingleChildScrollView(
                child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(197, 227, 255, 1),
                              borderRadius:
                              BorderRadius.circular(4), // Add border radius here
                            ),
                            width: 205,
                            height: 49,
                            child: Row(children: [
                              SizedBox(width: 30),

                              Center(
                                child:
                                Image.asset("assets/notifiction.png", width: 29, height: 27),
                              ),
                              SizedBox(width: 17),
                              Text(
                                "Notifications",
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontSize: 15,
                                    color: Color.fromRGBO(15, 15, 20, 1),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),

                            ]),
                          ),
                        ),

                        SizedBox(height: 20),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(
                                      color: Color.fromRGBO(0, 0, 0, 0.08),
                                      width: 1,
                                    ),
                                  ),
                                height: 163,
                                width: 361,

                                child:
                                      Column(
                                        children: [
                                          SizedBox(width: 10.0), // Spacing between Text and TextField
                                          SizedBox(height: 11),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 50.0),

                                            child:
                                            Column(
                                              children: [
                                                SizedBox(width: 30.0),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "Hi Koustubh,", // Replace with your country code
                                                      style: GoogleFonts.poppins(
                                                        fontSize: 13 ,color: Color.fromRGBO(15, 15, 20, 1),fontWeight: FontWeight.w400,),
                                                    ),

                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),

                                          SizedBox(width: 10.0), // Spacing between Text and TextField
                                          SizedBox(height: 5),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 10.0),

                                            child:
                                            Column(
                                              children: [
                                                SizedBox(width: 80.0),
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                      'assets/box.png', // Path to your image
                                                      width: 30, // Specify the width of the image
                                                      height: 30, // Specify the height of the image
                                                    ),
                                                    SizedBox(width: 8),
                                                    Text(
                                                      "Your laundry order [Order 123456] is \ncomplete and ready for dispatch.", // Replace with your country code
                                                      style: GoogleFonts.poppins(
                                                        fontSize: 15 ,color: Color.fromRGBO(15, 15, 20, 1),fontWeight: FontWeight.w400,),
                                                    ),

                                                  ],
                                                ),

                                              ],
                                            ),
                                          ),


                                          SizedBox(width: 10.0), // Spacing between Text and TextField
                                          SizedBox(height: 5),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 50.0),

                                            child:
                                            Column(
                                              children: [
                                                SizedBox(width: 60.0),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "Order details:", // Replace with your country code
                                                      style: GoogleFonts.poppins(
                                                        fontSize: 13 ,color: Color.fromRGBO(15, 15, 20, 0.9),fontWeight: FontWeight.w400,),
                                                    ),

                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),

                                          SizedBox(width: 10.0), // Spacing between Text and TextField
                                          SizedBox(height: 5),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 50.0),

                                            child:
                                            Column(
                                              children: [
                                                SizedBox(width: 60.0),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "Pickup date: May 30 2024", // Replace with your country code
                                                      style: GoogleFonts.poppins(
                                                        fontSize: 13 ,color: Color.fromRGBO(15, 15, 20, 0.7),fontWeight: FontWeight.w400,),
                                                    ),

                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),

                                          SizedBox(width: 10.0), // Spacing between Text and TextField
                                          SizedBox(height: 5),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 50.0),

                                            child:
                                            Column(
                                              children: [
                                                SizedBox(width: 60.0),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "Items cleaned: 12", // Replace with your country code
                                                      style: GoogleFonts.poppins(
                                                        fontSize: 13 ,color: Color.fromRGBO(15, 15, 20, 0.7),fontWeight: FontWeight.w400,),
                                                    ),

                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),


                                        ],
                                      ),
                                    ),

                                  ],
                                ),



                              ),

                        SizedBox(height: 20),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                    color: Color.fromRGBO(0, 0, 0, 0.08),
                                    width: 1,
                                  ),
                                ),
                                height: 145,
                                width: 361,

                                child:
                                Column(
                                  children: [
                                    SizedBox(width: 10.0), // Spacing between Text and TextField
                                    SizedBox(height: 11),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 50.0),

                                      child:
                                      Column(
                                        children: [
                                          SizedBox(width: 30.0),
                                          Row(
                                            children: [
                                              Text(
                                                "Hi Koustubh,", // Replace with your country code
                                                style: GoogleFonts.poppins(
                                                  fontSize: 13 ,color: Color.fromRGBO(15, 15, 20, 1),fontWeight: FontWeight.w400,),
                                              ),

                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                    SizedBox(width: 10.0), // Spacing between Text and TextField
                                    SizedBox(height: 5),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0),

                                      child:
                                      Column(
                                        children: [
                                          SizedBox(width: 80.0),
                                          Row(
                                            children: [
                                              Image.asset(
                                                'assets/deliverybod.png', // Path to your image
                                                width: 30, // Specify the width of the image
                                                height: 30, // Specify the height of the image
                                              ),
                                              SizedBox(width: 8),
                                              Text(
                                                "Your laundry is delivered to vender.", // Replace with your country code
                                                style: GoogleFonts.poppins(
                                                  fontSize: 15 ,color: Color.fromRGBO(15, 15, 20, 1),fontWeight: FontWeight.w400,),
                                              ),

                                            ],
                                          ),

                                        ],
                                      ),
                                    ),


                                    SizedBox(width: 10.0), // Spacing between Text and TextField
                                    SizedBox(height: 5),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 50.0),

                                      child:
                                      Column(
                                        children: [
                                          SizedBox(width: 60.0),
                                          Row(
                                            children: [
                                              Text(
                                                "Order details:", // Replace with your country code
                                                style: GoogleFonts.poppins(
                                                  fontSize: 13 ,color: Color.fromRGBO(15, 15, 20, 0.9),fontWeight: FontWeight.w400,),
                                              ),

                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                    SizedBox(width: 10.0), // Spacing between Text and TextField
                                    SizedBox(height: 5),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 50.0),

                                      child:
                                      Column(
                                        children: [
                                          SizedBox(width: 60.0),
                                          Row(
                                            children: [
                                              Text(
                                                "Pickup date: May 30 2024", // Replace with your country code
                                                style: GoogleFonts.poppins(
                                                  fontSize: 13 ,color: Color.fromRGBO(15, 15, 20, 0.7),fontWeight: FontWeight.w400,),
                                              ),

                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                    SizedBox(width: 10.0), // Spacing between Text and TextField
                                    SizedBox(height: 5),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 50.0),

                                      child:
                                      Column(
                                        children: [
                                          SizedBox(width: 60.0),
                                          Row(
                                            children: [
                                              Text(
                                                "Laundry items: 14", // Replace with your country code
                                                style: GoogleFonts.poppins(
                                                  fontSize: 13 ,color: Color.fromRGBO(15, 15, 20, 0.7),fontWeight: FontWeight.w400,),
                                              ),

                                            ],
                                          ),
                                        ],
                                      ),
                                    ),


                                  ],
                                ),
                              ),

                            ],
                          ),



                        ),

                      ],
                          ),
                        ),

            ) ,
                    ));
  }
}
