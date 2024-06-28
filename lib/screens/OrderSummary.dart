import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'MainScreen.dart';

class OrderSummary extends StatefulWidget {
  const OrderSummary({super.key});

  @override
  State<OrderSummary> createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: SafeArea(
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

                        SizedBox(height: 10),

                        Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              "Order Summary", // Replace with your country code
                              style: GoogleFonts.poppins(
                                  fontSize: 20, color: Colors.black,fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),

                        SizedBox(height: 17),
                        Row(
                          children: [
                            SizedBox(width: 10),

                            Text(
                              "Order ID: 1234567", // Replace with your country code
                              style: GoogleFonts.poppins(
                                  fontSize: 14, color: Color.fromRGBO(15, 15, 20, 1),fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),

                        SizedBox(height: 10),

                        Row(
                          children: [
                            SizedBox(width: 10),

                            Text(
                              "Date: May 17, 2024", // Replace with your country code
                              style: GoogleFonts.poppins(
                                  fontSize: 13, color: Color.fromRGBO(15, 15, 20, 1),fontWeight: FontWeight.w400),
                            ),

                          ]),

                        SizedBox(height: 10),

                        Row(
                          children: [
                            SizedBox(width: 10),

                            Text(
                              "Service Type: ", // Replace with your country code
                              style: GoogleFonts.poppins(
                                  fontSize: 15, color: Color.fromRGBO(15, 15, 20, 1),fontWeight: FontWeight.w400),
                            ),

                            SizedBox(width: 5),

                            Image.asset(
                              "assets/laun.png", // Path to your arrow image
                              width: 89,
                              height: 33,
                            ),

                          ],
                        ),

                        SizedBox(height: 20),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 1.0),
                          child:
                          Container(

                            decoration: BoxDecoration(
                              color: Color.fromRGBO(213, 233, 251, 1),
                            ),
                            height: 110,
                            width: 393,
                            child:
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    SizedBox(width: 10),

                                    Padding(
                                      padding: EdgeInsets.only(top: 10), // Adjust the value as needed
                                      child:
                                      Container(

                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(213, 233, 251, 1),
                                          border: Border.all(
                                            color: Color.fromRGBO(32, 129, 239, 1),
                                            width: 1,
                                          ),
                                        ),
                                        height: 33,
                                        width: 360,
                                        child:

                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [

                                            SizedBox(width: 10),

                                            Padding(
                                              padding: EdgeInsets.only(top: 1), // Adjust the value as needed

                                              child:
                                              Text(
                                                'Special Instructions',
                                                style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                    color: Color.fromRGBO(15, 15, 20, 1),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
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

                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    SizedBox(width: 11),

                                    Text(
                                      'Air dry delicate items',
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          color: Color.fromRGBO(15, 15, 20, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                                SizedBox(height: 5),

                                Row(
                                  children: [
                                    SizedBox(width: 11),

                                    Text(
                                      'Remove coffee stains on shirts',
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          color: Color.fromRGBO(15, 15, 20, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),

                                  ],
                                ),

                              ],
                            ),

                          ),
                        ),

                        SizedBox(height: 20),

                        Row(
                          children: [
                            SizedBox(width: 20),

                            Text(
                              "Pickup:", // Replace with your country code
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  color: Color.fromRGBO(15, 15, 20, 1),
                                  fontWeight: FontWeight.w500),
                            ),

                            SizedBox(width: 5),

                            Text(
                              "Date: June 6, 2024", // Replace with your country code
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  color: Color.fromRGBO(15, 15, 20, 1),
                                  fontWeight: FontWeight.w400),
                            ),

                          ],
                        ),
                        SizedBox(height: 10),

                        Row(
                          children: [
                            SizedBox(width: 81),

                            Text(
                              "Time: 10:00 AM - 12:00 PM", // Replace with your country code
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  color: Color.fromRGBO(15, 15, 20, 1),
                                  fontWeight: FontWeight.w400),
                            ),

                          ],),

                        SizedBox(height: 30),

                        Row(
                          children: [
                            SizedBox(width: 20),

                            Text(
                              "Delivery:", // Replace with your country code
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  color: Color.fromRGBO(15, 15, 20, 1),
                                  fontWeight: FontWeight.w500),
                            ),

                            SizedBox(width: 5),

                            Text(
                              "Date: June 6, 2024", // Replace with your country code
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  color: Color.fromRGBO(15, 15, 20, 1),
                                  fontWeight: FontWeight.w400),
                            ),

                          ],
                        ),
                        SizedBox(height: 10),

                        Row(
                          children: [
                            SizedBox(width: 92),

                            Text(
                              "Time: 10:00 AM - 12:00 PM", // Replace with your country code
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  color: Color.fromRGBO(15, 15, 20, 1),
                                  fontWeight: FontWeight.w400),
                            ),

                          ],),

                        SizedBox(height: 25),

                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 20),

                                Text(
                                  "Price Details", // Replace with your country code
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      color: Color.fromRGBO(15, 15, 20, 1),
                                      fontWeight: FontWeight.w500),
                                ),

                              ]),

                            SizedBox(height: 10),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 1.0),
                              child:
                              Container(

                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color.fromRGBO(239, 247, 255, 1),
                                      Color.fromRGBO(119, 190, 255, 1),
                                  ],
                                  ),
                                    borderRadius: BorderRadius.circular(4), // Set the border radius here
                                ),
                                height: 59,
                                width: 361,
                                child:
                                Column(
                                  children: [
                                    SizedBox(height: 9),

                                    Row(
                                      children: [
                                        SizedBox(width: 10),


                                        Checkbox(
                                          value: _isChecked,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              _isChecked = value ?? false;
                                            });
                                          },
                                          activeColor: Color.fromRGBO(12, 121, 222, 1), // Color when checked
                                          checkColor: Color.fromRGBO(255, 255, 255, 1), // Color of the checkmark
                                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, // Reduces tap target size
                                        ),

                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 1.0),
                                              child:
                                              Text(
                                                "Pay Using Points", // Replace with your country code
                                                style: GoogleFonts.poppins(
                                                    fontSize: 17,
                                                    color: Color.fromRGBO(0, 0, 0, 1),
                                                    fontWeight: FontWeight.w500),
                                              ),

                                            ),

                                            Row(
                                              children: [
                                                SizedBox(width: 15),

                                                Text(
                                                  "Available points:", // Replace with your country code
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 13,
                                                      color: Color.fromRGBO(0, 0, 0, 1),
                                                      fontWeight: FontWeight.w400),
                                                ),
                                                SizedBox(width: 5),

                                                Image.asset(
                                                  "assets/coin.png", // Path to your arrow image
                                                  width: 14,
                                                  height: 14,
                                                ),
                                                SizedBox(width: 5),

                                                Text(
                                                  "200", // Replace with your country code
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 13,
                                                      color: Color.fromRGBO(0, 0, 0, 1),
                                                      fontWeight: FontWeight.w400),
                                                ),

                                              ],
                                            ),

                                          ],
                                        ),

                                      ],
                                    ),



                                  ],
                                ),


                              ),

                            ),

                          ],
                        ),

                        Column(
                            children: [

                              SizedBox(height: 20),

                              Row(
                            children: [
                              SizedBox(width: 263),

                              Text(
                                "Subtotal: SAR 50", // Replace with your country code
                                style: GoogleFonts.poppins(
                                    fontSize: 13,
                                    color: Color.fromRGBO(15, 15, 20, 1),
                                    fontWeight: FontWeight.w400),
                              ),
                            ]
                        ),

                              SizedBox(height: 10),

                              Row(
                                  children: [
                                    SizedBox(width: 247),

                                    Text(
                                      "Discount: - SAR 50", // Replace with your country code
                                      style: GoogleFonts.poppins(
                                          fontSize: 13,
                                          color: Color.fromRGBO(0, 140, 22, 1),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ]
                              ),

                              SizedBox(height: 10),

                              Row(
                                  children: [
                                    SizedBox(width: 202),

                                    Text(
                                      "Delivery Charges: SAR 55", // Replace with your country code
                                      style: GoogleFonts.poppins(
                                          fontSize: 13,
                                          color: Color.fromRGBO(15, 15, 20, 1),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ]
                              ),
                              SizedBox(height: 5),

                              Row(
                                children: [
                                  SizedBox(width: 224),

                                  Container(
                                    height: 1.0,
                                    // Adjust height as needed
                                    width: 146,
                                    // Expands to fill parent width
                                    color: Color.fromRGBO(0, 0, 0, 0.3),
                                  ),
                                ],
                              ),
                              SizedBox(height: 3),

                              Row(
                                  children: [
                                    SizedBox(width: 265),

                                    Text(
                                      "Total: SAR 100", // Replace with your country code
                                      style: GoogleFonts.poppins(
                                          fontSize: 15,
                                          color: Color.fromRGBO(15, 15, 20, 1),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ]
                              ),
                              SizedBox(height: 35),

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
                                    "Confirm and pay",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(251, 254, 255, 1)
                                      // Set text color to white here
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 35),


                            ])



                      ],
                    ),

                    ))));
  }
}
