import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Transactionhistory extends StatefulWidget {
  const Transactionhistory({super.key});

  @override
  State<Transactionhistory> createState() => _TransactionhistoryState();
}

class _TransactionhistoryState extends State<Transactionhistory> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body:  SafeArea(
          child: SingleChildScrollView(
              child: Center(
                  child: Column(
                    children: [
                      Text(
                        "Transaction History", // Replace with your country code
                        style: GoogleFonts.poppins(
                            fontSize: 20, color: Colors.black,fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(

                          children: [
                            SizedBox(width: 30),
                            Text(" Recent Transations:",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color.fromRGBO(15, 15, 20, 1),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18))),

                        ]),

                      ),

                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white, // Shadow color
                                blurRadius: 4, // Blur radius
                              ),
                            ],

                            border: Border(
                              left: BorderSide( // Add this to include the right border
                                color: Color.fromRGBO(28, 134, 255, 1), // Border color
                                width: 3, // Border width
                              ),
                            ),

                          ),
                          height: 95,
                          width: 361,
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  SizedBox(height: 10,),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: 20),
                                          Text(
                                            "Dry Cleaning Payment", // Replace with your country code
                                            style: GoogleFonts.poppins(
                                                fontSize: 16, color: Color.fromRGBO(15, 15, 20, 1), fontWeight: FontWeight.w400),
                                          ),


                                          SizedBox(width: 76),
                                          Text(
                                            "-SAR 30.00", // Replace with your country code
                                            style: GoogleFonts.poppins(
                                              fontSize: 13, color: Color.fromRGBO(255, 32, 0, 1), fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),

                                      SizedBox(height: 5),

                                      Row(
                                        children: [
                                          SizedBox(width: 20),
                                          Text(
                                            "Sanam Laundry", // Replace with your country code
                                            style: GoogleFonts.poppins(
                                                fontSize: 14, color: Color.fromRGBO(15, 15, 20, 0.7), fontWeight: FontWeight.w400),
                                          ),

                                          SizedBox(width: 138),
                                          Image.asset(
                                            'assets/wallet.png', // Path to your image
                                            width: 10.29, // Specify the width of the image
                                            height: 9.75, // Specify the height of the image
                                          ),

                                          SizedBox(width: 8),

                                          Text(
                                            "From wallet", // Replace with your country code
                                            style: GoogleFonts.poppins(
                                              fontSize: 10, color: Color.fromRGBO(15, 15, 20, 0.7), fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),

                                      SizedBox(height: 5),

                                      Row(
                                        children: [
                                          SizedBox(width: 20),
                                          Text(
                                            "May 29, 2024 12:45pm", // Replace with your country code
                                            style: GoogleFonts.poppins(
                                                fontSize: 10, color: Color.fromRGBO(15, 15, 20, 0.7), fontWeight: FontWeight.w300),
                                          ),

                                          SizedBox(width: 36),

                                          Image.asset(
                                            'assets/sucess.png', // Path to your image
                                            width: 62, // Specify the width of the image
                                            height: 17, // Specify the height of the image
                                          ),

                                          SizedBox(width: 27),

                                          Text(
                                            "View details", // Replace with your country code
                                            style: GoogleFonts.poppins(
                                              fontSize: 13, color: Color.fromRGBO(0, 0, 0, 1), fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(width: 5),

                                          Image.asset(
                                            'assets/rightarrow1.png', // Path to your image
                                            width: 10.29, // Specify the width of the image
                                            height: 9.75, // Specify the height of the image
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
                      SizedBox(height: 13),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white, // Shadow color
                                blurRadius: 4, // Blur radius
                              ),
                            ],

                            border: Border(
                              left: BorderSide( // Add this to include the right border
                                color: Color.fromRGBO(28, 134, 255, 1), // Border color
                                width: 3, // Border width
                              ),
                            ),

                          ),
                          height: 95,
                          width: 361,
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  SizedBox(height: 10,),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: 20),
                                          Text(
                                            "Laundry Service Payment ", // Replace with your country code
                                            style: GoogleFonts.poppins(
                                                fontSize: 16, color: Color.fromRGBO(15, 15, 20, 1), fontWeight: FontWeight.w400),
                                          ),


                                          SizedBox(width: 46),
                                          Text(
                                            "-SAR 50.00", // Replace with your country code
                                            style: GoogleFonts.poppins(
                                              fontSize: 13, color: Color.fromRGBO(255, 32, 0, 1), fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),

                                      SizedBox(height: 5),

                                      Row(
                                        children: [
                                          SizedBox(width: 20),
                                          Text(
                                            "Sanam Laundry", // Replace with your country code
                                            style: GoogleFonts.poppins(
                                                fontSize: 14, color: Color.fromRGBO(15, 15, 20, 0.7), fontWeight: FontWeight.w400),
                                          ),

                                          SizedBox(width: 138),
                                          Image.asset(
                                            'assets/wallet.png', // Path to your image
                                            width: 10.29, // Specify the width of the image
                                            height: 9.75, // Specify the height of the image
                                          ),

                                          SizedBox(width: 8),

                                          Text(
                                            "From wallet", // Replace with your country code
                                            style: GoogleFonts.poppins(
                                              fontSize: 10, color: Color.fromRGBO(15, 15, 20, 0.7), fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),

                                      SizedBox(height: 5),

                                      Row(
                                        children: [
                                          SizedBox(width: 20),
                                          Text(
                                            "May 20, 2024 15:45pm", // Replace with your country code
                                            style: GoogleFonts.poppins(
                                                fontSize: 10, color: Color.fromRGBO(15, 15, 20, 0.7), fontWeight: FontWeight.w300),
                                          ),

                                          SizedBox(width: 36),

                                          Image.asset(
                                            'assets/sucess.png', // Path to your image
                                            width: 62, // Specify the width of the image
                                            height: 17, // Specify the height of the image
                                          ),

                                          SizedBox(width: 27),

                                          Text(
                                            "View details", // Replace with your country code
                                            style: GoogleFonts.poppins(
                                              fontSize: 13, color: Color.fromRGBO(0, 0, 0, 1), fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(width: 5),

                                          Image.asset(
                                            'assets/rightarrow1.png', // Path to your image
                                            width: 10.29, // Specify the width of the image
                                            height: 9.75, // Specify the height of the image
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
                      SizedBox(height: 13),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white, // Shadow color
                                blurRadius: 4, // Blur radius
                              ),
                            ],

                            border: Border(
                              left: BorderSide( // Add this to include the right border
                                color: Color.fromRGBO(28, 134, 255, 1), // Border color
                                width: 3, // Border width
                              ),
                            ),

                          ),
                          height: 95,
                          width: 361,
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  SizedBox(height: 10,),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: 20),
                                          Text(
                                            "Laundry Service Payment", // Replace with your country code
                                            style: GoogleFonts.poppins(
                                                fontSize: 16, color: Color.fromRGBO(15, 15, 20, 1), fontWeight: FontWeight.w400),
                                          ),


                                          SizedBox(width: 51),
                                          Text(
                                            "-SAR 50.00", // Replace with your country code
                                            style: GoogleFonts.poppins(
                                              fontSize: 13, color: Color.fromRGBO(255, 32, 0, 1), fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),

                                      SizedBox(height: 5),

                                      Row(
                                        children: [
                                          SizedBox(width: 20),
                                          Text(
                                            "Sanam Laundry", // Replace with your country code
                                            style: GoogleFonts.poppins(
                                                fontSize: 14, color: Color.fromRGBO(15, 15, 20, 0.7), fontWeight: FontWeight.w400),
                                          ),

                                          SizedBox(width: 138),
                                          Image.asset(
                                            'assets/wallet.png', // Path to your image
                                            width: 10.29, // Specify the width of the image
                                            height: 9.75, // Specify the height of the image
                                          ),

                                          SizedBox(width: 8),

                                          Text(
                                            "From wallet", // Replace with your country code
                                            style: GoogleFonts.poppins(
                                              fontSize: 10, color: Color.fromRGBO(15, 15, 20, 0.7), fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),

                                      SizedBox(height: 5),

                                      Row(
                                        children: [
                                          SizedBox(width: 20),
                                          Text(
                                            "May 20, 2024 15:45pm", // Replace with your country code
                                            style: GoogleFonts.poppins(
                                                fontSize: 10, color: Color.fromRGBO(15, 15, 20, 0.7), fontWeight: FontWeight.w300),
                                          ),

                                          SizedBox(width: 36),

                                          Image.asset(
                                            'assets/failed.png', // Path to your image
                                            width: 62, // Specify the width of the image
                                            height: 17, // Specify the height of the image
                                          ),

                                          SizedBox(width: 27),

                                          Text(
                                            "View details", // Replace with your country code
                                            style: GoogleFonts.poppins(
                                              fontSize: 13, color: Color.fromRGBO(0, 0, 0, 1), fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(width: 5),

                                          Image.asset(
                                            'assets/rightarrow1.png', // Path to your image
                                            width: 10.29, // Specify the width of the image
                                            height: 9.75, // Specify the height of the image
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
                      SizedBox(height: 13),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white, // Shadow color
                                blurRadius: 4, // Blur radius
                              ),
                            ],

                            border: Border(
                              left: BorderSide( // Add this to include the right border
                                color: Color.fromRGBO(28, 134, 255, 1), // Border color
                                width: 3, // Border width
                              ),
                            ),

                          ),
                          height: 95,
                          width: 361,
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  SizedBox(height: 10,),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: 20),
                                          Text(
                                            "Added to Wallet", // Replace with your country code
                                            style: GoogleFonts.poppins(
                                                fontSize: 16, color: Color.fromRGBO(15, 15, 20, 1), fontWeight: FontWeight.w400),
                                          ),


                                          SizedBox(width: 117),
                                          Text(
                                            "+SAR 500.00", // Replace with your country code
                                            style: GoogleFonts.poppins(
                                              fontSize: 13, color: Color.fromRGBO(0, 200, 56, 1), fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),

                                      SizedBox(height: 5),

                                      Row(
                                        children: [


                                          SizedBox(width: 288),
                                          Image.asset(
                                            'assets/wallet.png', // Path to your image
                                            width: 10.29, // Specify the width of the image
                                            height: 9.75, // Specify the height of the image
                                          ),

                                          SizedBox(width: 8),

                                          Text(
                                            "In wallet", // Replace with your country code
                                            style: GoogleFonts.poppins(
                                              fontSize: 10, color: Color.fromRGBO(15, 15, 20, 0.7), fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),

                                      SizedBox(height: 5),

                                      Row(
                                        children: [
                                          SizedBox(width: 20),
                                          Text(
                                            "May 20, 2024 15:45pm", // Replace with your country code
                                            style: GoogleFonts.poppins(
                                                fontSize: 10, color: Color.fromRGBO(15, 15, 20, 0.7), fontWeight: FontWeight.w300),
                                          ),

                                          SizedBox(width: 36),

                                          Image.asset(
                                            'assets/sucess.png', // Path to your image
                                            width: 62, // Specify the width of the image
                                            height: 17, // Specify the height of the image
                                          ),

                                          SizedBox(width: 27),

                                          Text(
                                            "View details", // Replace with your country code
                                            style: GoogleFonts.poppins(
                                              fontSize: 13, color: Color.fromRGBO(0, 0, 0, 1), fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(width: 5),

                                          Image.asset(
                                            'assets/rightarrow1.png', // Path to your image
                                            width: 10.29, // Specify the width of the image
                                            height: 9.75, // Specify the height of the image
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
                  )))),
    );
  }
}
