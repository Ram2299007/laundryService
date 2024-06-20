import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Offersandpromotions extends StatefulWidget {
  const Offersandpromotions({super.key});

  @override
  State<Offersandpromotions> createState() => _OffersandpromotionsState();
}

class _OffersandpromotionsState extends State<Offersandpromotions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body:  SafeArea(
          child: SingleChildScrollView(
              child: Center(
                  child: Column(
                    children: [
                      Text(
                        "Offers And Promotions", // Replace with your country code
                        style: GoogleFonts.poppins(
                            fontSize: 20, color: Colors.black,fontWeight: FontWeight.w500),
                      ),


                      SizedBox(height: 20),

                      Stack(
                        children: [
                          Image.asset(
                            'assets/perpule.png', // Path to your image
                            width: 354, // Specify the width of the image
                            height: 229, // Specify the height of the image
                          ),
                          Positioned(
                            top: 15, // Adjust the top position of the text
                            left: 9, // Adjust the left position of the text
                            child: Text(
                              'Get 20% Off on Your First Order!',
                              style:  GoogleFonts.poppins(
                                color: Color.fromRGBO(15, 15, 20, 1),
                                fontSize: 20, // Adjust the font size here
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 55, // Adjust the top position of the second text
                            left: 9, // Adjust the left position of the second text
                            child: Text(
                              'Use code FIRST20 at checkout to enjoy a 20%\ndiscount on your first laundry service with us.', // Second text
                              style: GoogleFonts.poppins(
                                fontSize: 14, color: Color.fromRGBO(15, 15, 20, 0.85),fontWeight: FontWeight.w400),
                            ),
                          ),
                          Positioned(
                            top: 115, // Adjust the top position of the second text
                            left: 205, // Adjust the left position of the second text
                            child: Text(
                              'Valid till July 10, 2024', // Second text
                              style: GoogleFonts.poppins(
                                  fontSize: 13.5, color: Color.fromRGBO(15, 15, 20, 1),fontWeight: FontWeight.w400),
                            ),
                          ),
                          Positioned(
                            top: 150, // Adjust the top position of the second text
                            left: 191, // Adjust the left position of the second text
                            child:
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 2.0),
                              child: Row(
                                children: [
                                  SizedBox(width: 19),
                                  SizedBox(
                                    width: 132,  // Set your desired width
                                    height: 36,  // Set your desired height
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8.0),
                                          side: BorderSide(
                                            color: Color.fromRGBO(32, 129, 239, 1),  // Set your border color
                                            width: 1,  // Set the width of the border
                                          ),
                                        ),
                                        backgroundColor: Colors.transparent,  // Set the background to transparent
                                        shadowColor: Colors.transparent,      // Remove shadow if necessary
                                      ),
                                      child: Text(
                                        "Apply Now",
                                        style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(15, 15, 20, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )

                          ),


                        ],
                      ),

                      SizedBox(height: 10),

                      Stack(
                        children: [
                          Image.asset(
                            'assets/green.png', // Path to your image
                            width: 385, // Specify the width of the image
                            height: 300, // Specify the height of the image
                          ),
                          Positioned(
                            top: 50, // Adjust the top position of the text
                            left: 25, // Adjust the left position of the text
                            child: Text(
                              'Refer a Friend, Earn Rewards!',
                              style:  GoogleFonts.poppins(
                                color: Color.fromRGBO(15, 15, 20, 1),
                                fontSize: 20, // Adjust the font size here
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 90, // Adjust the top position of the second text
                            left: 25, // Adjust the left position of the second text
                            child: Text(
                              'Refer your friends and both of you will\nreceive a 10% discount on your next order.\nUse the referral code provided in your profile.', // Second text
                              style: GoogleFonts.poppins(
                                  fontSize: 14, color: Color.fromRGBO(15, 15, 20, 0.85),fontWeight: FontWeight.w400),
                            ),
                          ),
                          Positioned(
                            top: 164, // Adjust the top position of the second text
                            left: 25, // Adjust the left position of the second text
                            child: Text(
                              'Ongoing promotion', // Second text
                              style: GoogleFonts.poppins(
                                  fontSize: 14, color: Color.fromRGBO(15, 15, 20, 0.8),fontWeight: FontWeight.w400),
                            ),
                          ),
                          Positioned(
                              top: 200, // Adjust the top position of the second text
                              left: 10, // Adjust the left position of the second text
                              child:
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                child: Row(
                                  children: [
                                    SizedBox(width: 19),
                                    SizedBox(
                                      width: 136,  // Set your desired width
                                      height: 36,  // Set your desired height
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8.0),
                                            side: BorderSide(
                                              color: Color.fromRGBO(32, 129, 239, 1),  // Set your border color
                                              width: 1,  // Set the width of the border
                                            ),
                                          ),
                                          backgroundColor: Colors.transparent,  // Set the background to transparent
                                          shadowColor: Colors.transparent,      // Remove shadow if necessary
                                        ),
                                        child: Text(
                                          "Learn More",
                                          style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromRGBO(15, 15, 20, 1),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )

                          ),


                        ],
                      ),

                      SizedBox(height: 10),

                      Stack(
                        children: [
                          Image.asset(
                            'assets/rain.png', // Path to your image
                            width: 359, // Specify the width of the image
                            height: 276, // Specify the height of the image
                          ),
                          Positioned(
                            top: 20, // Adjust the top position of the text
                            left: 9, // Adjust the left position of the text
                            child: Text(
                              'Monsoon Special',
                              style:  GoogleFonts.poppins(
                                color: Color.fromRGBO(15, 15, 20, 1),
                                fontSize: 20, // Adjust the font size here
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 60, // Adjust the top position of the second text
                            left: 9, // Adjust the left position of the second text
                            child: Text(
                              'Monsoon Special - 15% Off on All Services\nStay dry and fresh this monsoon! Get 15% off\nOn all laundry and dry cleaning services\nduring the rainy season .', // Second text
                              style: GoogleFonts.poppins(
                                  fontSize: 14, color: Color.fromRGBO(15, 15, 20, 0.85),fontWeight: FontWeight.w400),
                            ),
                          ),
                          Positioned(
                            top: 164, // Adjust the top position of the second text
                            left: 162, // Adjust the left position of the second text
                            child: Text(
                              'Valid from June 15, 2024 to \nSept 10, 2024', // Second text
                              style: GoogleFonts.poppins(
                                  fontSize: 14, color: Color.fromRGBO(15, 15, 20, 0.8),fontWeight: FontWeight.w400),
                            ),
                          ),
                          Positioned(
                              top: 220, // Adjust the top position of the second text
                              left: 169, // Adjust the left position of the second text
                              child:
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                child: Row(
                                  children: [
                                    SizedBox(width: 19),
                                    SizedBox(
                                      width: 136,  // Set your desired width
                                      height: 36,  // Set your desired height
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8.0),
                                            side: BorderSide(
                                              color: Color.fromRGBO(32, 129, 239, 1),  // Set your border color
                                              width: 1,  // Set the width of the border
                                            ),
                                          ),
                                          backgroundColor: Colors.transparent,  // Set the background to transparent
                                          shadowColor: Colors.transparent,      // Remove shadow if necessary
                                        ),
                                        child: Text(
                                          "View Details",
                                          style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromRGBO(15, 15, 20, 1),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )

                          ),


                        ],
                      ),


                      SizedBox(height: 50),
                      Text(
                        "Exclusive Promo Codes Just for You!", // Replace with your country code
                        style: GoogleFonts.poppins(
                            fontSize: 18, color: Color.fromRGBO(15, 15, 20, 1),fontWeight: FontWeight.w500),
                      ),

                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                            border: const Border(
                              left: BorderSide(
                                color: Color.fromRGBO(0, 102, 218, 1), // Border color
                                width: 3, // Border width
                              ),
                              top: BorderSide(
                                color: Color.fromRGBO(0, 102, 218, 1), // Border color
                                width: 1, // Border width
                              ),
                              right: BorderSide(
                                color: Color.fromRGBO(0, 102, 218, 1), // Border color
                                width: 1, // Border width
                              ),
                              bottom: BorderSide(
                                color: Color.fromRGBO(0, 102, 218, 1), // Border color
                                width: 1, // Border width
                              ),
                            ),
                          ),
                          height: 48,
                          width: 361,
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  SizedBox(height: 15),

                                  Column(
                                    children: [
                                      SizedBox(width: 10),

                                      Row(
                                        children: [
                                          SizedBox(width: 5),

                                          Text(
                                            "FAMILY10:", // Replace with your country code
                                            style: GoogleFonts.poppins(
                                                fontSize: 13.6, color: Color.fromRGBO(15, 15, 20, 1), fontWeight: FontWeight.w600),
                                          ),

                                          SizedBox(width: 5),

                                          Text(
                                            "Get 10% off on family laundry packages.", // Replace with your country code
                                            style: GoogleFonts.poppins(
                                              fontSize: 13.6, color: Color.fromRGBO(15, 15, 20, 1), fontWeight: FontWeight.w400,
                                            ),
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

                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                            border: const Border(
                              left: BorderSide(
                                color: Color.fromRGBO(91, 0, 207, 1), // Border color
                                width: 3, // Border width
                              ),
                              top: BorderSide(
                                color: Color.fromRGBO(91, 0, 207, 1), // Border color
                                width: 1, // Border width
                              ),
                              right: BorderSide(
                                color: Color.fromRGBO(91, 0, 207, 1), // Border color
                                width: 1, // Border width
                              ),
                              bottom: BorderSide(
                                color: Color.fromRGBO(91, 0, 207, 1), // Border color
                                width: 1, // Border width
                              ),
                            ),
                          ),
                          height: 48,
                          width: 361,
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  SizedBox(height: 15),

                                  Column(
                                    children: [
                                      SizedBox(width: 10),

                                      Row(
                                        children: [
                                          SizedBox(width: 5),

                                          Text(
                                            "DRYCLEAN15:", // Replace with your country code
                                            style: GoogleFonts.poppins(
                                                fontSize: 13.6, color: Color.fromRGBO(15, 15, 20, 1), fontWeight: FontWeight.w600),
                                          ),

                                          SizedBox(width: 5),

                                          Text(
                                            "15% off on all dry cleaning services.", // Replace with your country code
                                            style: GoogleFonts.poppins(
                                              fontSize: 13.6, color: Color.fromRGBO(15, 15, 20, 1), fontWeight: FontWeight.w400,
                                            ),
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

                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                            border: const Border(
                              left: BorderSide(
                                color: Color.fromRGBO(0, 187, 109, 1), // Border color
                                width: 3, // Border width
                              ),
                              top: BorderSide(
                                color: Color.fromRGBO(0, 187, 109, 1), // Border color
                                width: 1, // Border width
                              ),
                              right: BorderSide(
                                color: Color.fromRGBO(0, 187, 109, 1), // Border color
                                width: 1, // Border width
                              ),
                              bottom: BorderSide(
                                color: Color.fromRGBO(0, 187, 109, 1), // Border color
                                width: 1, // Border width
                              ),
                            ),
                          ),
                          height: 48,
                          width: 361,
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  SizedBox(height: 15),

                                  Column(
                                    children: [
                                      SizedBox(width: 10),

                                      Row(
                                        children: [
                                          SizedBox(width: 5),

                                          Text(
                                            "EXPRESS5:", // Replace with your country code
                                            style: GoogleFonts.poppins(
                                                fontSize: 13.6, color: Color.fromRGBO(15, 15, 20, 1), fontWeight: FontWeight.w600),
                                          ),

                                          SizedBox(width: 5),

                                          Text(
                                            "Enjoy 5% off on express delivery services.", // Replace with your country code
                                            style: GoogleFonts.poppins(
                                              fontSize: 13.0, color: Color.fromRGBO(15, 15, 20, 1), fontWeight: FontWeight.w400,
                                            ),
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

                      SizedBox(height: 30),

                      Text(
                        "Stay Updated with Our Latest Offers", // Replace with your country code
                        style: GoogleFonts.poppins(
                            fontSize: 16, color: Color.fromRGBO(15, 15, 20, 1),fontWeight: FontWeight.w500),
                      ),

                      SizedBox(height: 20),

                      Text(
                        "Subscribe to our newsletter and never miss out\n   on exclusive deals and promotions.", // Replace with your country code
                        style: GoogleFonts.poppins(
                            fontSize: 14, color: Color.fromRGBO(15, 15, 20, 1),fontWeight: FontWeight.w400),
                      ),

                      SizedBox(height: 20),
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
                            "Subscribe",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(251, 254, 255, 1)

                            // Set text color to white here
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 20),

                    ],
                  )))),
    );
  }
}
