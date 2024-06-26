import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpScreen2 extends StatefulWidget {
  const HelpScreen2({super.key});

  @override
  State<HelpScreen2> createState() => _HelpScreen2State();
}

class _HelpScreen2State extends State<HelpScreen2> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 23.0),

                      Container(
                        alignment: Alignment.center,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              'assets/customercareemoji.png', // Path to your background image
                              width: 135.72, // Adjust the width as needed
                              height: 105.51, // Adjust the height as needed
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12,),
                      Text(
                        "How can we help you?", // Replace with your country code
                        style: GoogleFonts.poppins(
                            fontSize: 20, color: Colors.black,fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 20,),

                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 1.0),
                              child:
                              Container(
                                decoration: BoxDecoration(

                                  color: Color.fromRGBO(242, 242, 242, 1)
                                  ,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(217, 217, 217, 1).withOpacity(0.5), // Shadow color
                                      spreadRadius: -1, // Spread radius
                                      blurRadius: 4, // Blur radius
                                      offset: Offset(2, 1), // Shadow offset
                                    ),
                                  ],
                                ),
                                height: 187,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    SizedBox(width: 10,),
                                    Expanded(
                                      child:
                                      TextField(
                                        decoration: InputDecoration(
                                          hintText: "Type here...",
                                          hintStyle: GoogleFonts.poppins(
                                              textStyle:
                                              const TextStyle(fontSize: 12,color: Colors.grey,fontWeight:  FontWeight.w400,)
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

                                  ],
                                ),

                              ),
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
                                  "Submit",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(251, 254, 255, 1)

                                  // Set text color to white here
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],

                  )))),
    );
  }
}
