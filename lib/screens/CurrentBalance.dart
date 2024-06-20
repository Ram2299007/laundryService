import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
const List<String> list = <String>['One', 'Two', 'Three', 'Four'];
class CurrentBalance extends StatefulWidget {
  const CurrentBalance({super.key});

  @override
  State<CurrentBalance> createState() => _CurrentbalanceState();
}

class _CurrentbalanceState extends State<CurrentBalance> {

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
     body: SafeArea(
        child: SingleChildScrollView(
            child: Center(
                child: Padding(

                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      SizedBox(height: 60),

                      Text(
                        "Current Balance", // Replace with your country code
                        style: GoogleFonts.poppins(
                          fontSize: 20, color: Color.fromRGBO(15, 15, 20, 0.8),fontWeight: FontWeight.w500,),
                      ),
                      SizedBox(height: 20),

                      Stack(
                        children: [
                          Image.asset(
                            'assets/blankScreen.png', // Path to your image
                            width: 361, // Specify the width of the image
                            height: 133, // Specify the height of the image
                          ),
                          Positioned(
                            top: 25, // Adjust the top position of the text
                            left: 25, // Adjust the left position of the text
                            child: Text(
                              'Total Amount in your Wallet',
                              style:  GoogleFonts.poppins(
                                color: Color.fromRGBO(251, 253, 255, 1),
                                fontSize: 20, // Adjust the font size here
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 66, // Adjust the top position of the second text
                            left: 120, // Adjust the left position of the second text
                            child: Text(
                              'SAR 2000', // Second text
                              style: GoogleFonts.poppins(
                                fontSize: 28, color: Color.fromRGBO(251, 253, 255, 1),fontWeight: FontWeight.w500,),
                            ),
                          ),
                        ],
                      ),


                      SizedBox(height: 40),
                      Text(
                        "Add Funds To Wallet", // Replace with your country code
                        style: GoogleFonts.poppins(
                          fontSize: 20, color: Color.fromRGBO(15, 15, 20, 0.8),fontWeight: FontWeight.w500,),
                      ),

                      SizedBox(height: 20),
                      SizedBox(width: 10),

                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Enter Amount to Add", // Replace with your country code
                              style: GoogleFonts.poppins(
                                fontSize: 14, color: Color.fromRGBO(0, 0, 0, 1),fontWeight: FontWeight.w400,),
                            ),
                          ] ),

                      SizedBox(height: 10),
                      SizedBox(width: 10),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.0), // Adding internal padding to the container
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(224, 239, 255, 0.2),
                            borderRadius: BorderRadius.circular(4),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(217, 217, 217, 1).withOpacity(0.5), // Shadow color
                                spreadRadius: -1, // Spread radius
                                blurRadius: 3.8, // Blur radius
                                offset: Offset(2, 1), // Shadow offset
                              ),
                            ],
                            border: Border.all(
                              color: Color.fromRGBO(187, 220, 255, 1), // Border color
                              width: 0.95, // Border width
                            ),
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // SizedBox(width: 10,), // Removed this as internal padding is added to Container
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Enter Amount",
                                    hintStyle: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                        fontSize: 11.4,
                                        color: Color.fromRGBO(15, 15, 20, 0.7),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    contentPadding: EdgeInsets.zero, // Remove internal padding from TextField
                                  ),
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  keyboardType: TextInputType.phone,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 20),
                      SizedBox(width: 10),

                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Select payment method", // Replace with your country code
                              style: GoogleFonts.poppins(
                                fontSize: 14, color: Color.fromRGBO(0, 0, 0, 1),fontWeight: FontWeight.w400,),
                            ),
                          ] ),

                      SizedBox(height: 12),
                      SizedBox(width: 10),

                      DropdownMenuExample(),
                      SizedBox(height: 40),

                      ElevatedButton(

                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          backgroundColor: Color.fromRGBO(32, 129, 239, 1),
                        ),
                        child: Text(
                          "Add Funds",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(251, 254, 255, 1),

                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                          child:Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0),

                            child: Row(
                              children: [
                                SizedBox(width: 20),
                                Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/locks.png', // Path to your image
                                  width: 9.33, // Specify the width of the image
                                  height: 12.25, // Specify the height of the image
                                ),
                              ),
                              Text(
                                  "All transactions are secured and encrypted.\n You payment information is safe with us.", // Replace with your country code

                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color: Color.fromRGBO(15, 15, 20, 0.6),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12))),
                            ],),
                          )

                      ),



                    ],


                  ),
                )))));
  }

}
class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return
      Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(224, 239, 255, 0.2),
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(217, 217, 217, 1).withOpacity(0.5), // Shadow color
              spreadRadius: -1, // Spread radius
              blurRadius: 3.8, // Blur radius
              offset: Offset(2, 1), // Shadow offset
            ),
          ],
          border: Border.all(
            color: Color.fromRGBO(187, 220, 255, 1), // Border color
            width: 0.95, // Border width
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10.0), // Adding internal padding to the container
        child: DropdownButton<String>(
          value: dropdownValue,
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            );
          }).toList(),
          underline: SizedBox(), // This removes the default underline
          isExpanded: true, // Makes the dropdown take up the full width
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 13,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      );
  }
}