import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundryservice/screens/HelpScreen2.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      SizedBox(height: 12,),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(192, 221, 255, 0.2),
                                borderRadius: BorderRadius.circular(4), // Add border radius here
                              ),
                              width: 361,
                              height: 46,
                              child: Row(
                                  children: [
                                    SizedBox(width: 10),

                                    Center(
                                      child: Image.asset("assets/massage.png",
                                          width: 30,
                                          height: 30),
                                    ),
                                    SizedBox(width: 15),
                                    Text("Support",
                                      style: TextStyle(
                                        fontSize: 14,

                                      ),

                                    ),
                                    Spacer(), // This will push the arrow to the right end
                                    Image.asset(
                                      "assets/chevronright.png", // Path to your arrow image
                                      width: 7.4,
                                      height: 12,
                                    ),
                                    SizedBox(width: 10),

                                  ]),
                            ),
                            SizedBox(height: 12,),

                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(192, 221, 255, 0.2),
                                borderRadius: BorderRadius.circular(4), // Add border radius here
                              ),
                              width: 361,
                              height: 46,
                              child: Row(
                                  children: [
                                    SizedBox(width: 10),

                                    Center(
                                      child: Image.asset("assets/massage.png",
                                          width: 30,
                                          height: 30),
                                    ),
                                    SizedBox(width: 15),
                                    Text("Email",
                                      style: TextStyle(
                                        fontSize: 14,

                                      ),

                                    ),
                                    Spacer(), // This will push the arrow to the right end
                                    Image.asset(
                                      "assets/chevronright.png", // Path to your arrow image
                                      width: 7.4,
                                      height: 12,
                                    ),
                                    SizedBox(width: 10),

                                  ]),
                            ),

                          ],
                        ),

                      ),
                      Text(
                        "FAQ'S", // Replace with your country code
                        style: GoogleFonts.poppins(
                            fontSize: 20, color: Colors.black,fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                  color: Color.fromRGBO(0, 0, 0, 0.12),
                                  width: 1,
                                ),
                              ),


                              child: Row(
                                children: [
                                  SizedBox(width: 10),

                               Text(
                                ' What should I do if I am not satisfied with \n the service? ',
                                style: TextStyle(
                                  color: Color.fromRGBO(15, 15, 20, 1),
                                  fontSize: 14,
                                ),
                              ),
                              Spacer(), // This will push the arrow to the right end
                              Image.asset(
                                "assets/chevrondown.png", // Path to your arrow image
                                width: 24,
                                height: 24,
                              ),
                              SizedBox(width: 10),
                              ] ) ),
                            SizedBox(height: 10,),

                            Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                    color: Color.fromRGBO(0, 0, 0, 0.12),
                                    width: 1,
                                  ),
                                ),

                                child: Row(
                                    children: [
                                      SizedBox(width: 10),

                                      Text(
                                        'What are your pickup and delivery hours?',
                                        style: TextStyle(
                                          color: Color.fromRGBO(15, 15, 20, 1),
                                          fontSize: 14,
                                        ),
                                      ),
                                      Spacer(), // This will push the arrow to the right end
                                      Image.asset(
                                        "assets/chevrondown.png", // Path to your arrow image
                                        width: 24,
                                        height: 24,
                                      ),
                                      SizedBox(width: 10),
                                    ] ) ),
                            SizedBox(height: 10,),

                            Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                    color: Color.fromRGBO(0, 0, 0, 0.12),
                                    width: 1,
                                  ),
                                ),

                                child: Row(
                                    children: [
                                      SizedBox(width: 10),

                                      Text(
                                        'Can I change my pickup or delivery time?',
                                        style: TextStyle(
                                          color: Color.fromRGBO(15, 15, 20, 1),
                                          fontSize: 14,
                                        ),
                                      ),
                                      Spacer(), // This will push the arrow to the right end
                                      Image.asset(
                                        "assets/chevrondown.png", // Path to your arrow image
                                        width: 24,
                                        height: 24,
                                      ),
                                      SizedBox(width: 10),
                                    ] ) ),
                            SizedBox(height: 10,),

                            Container(
                                decoration: BoxDecoration(

                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                    color: Color.fromRGBO(0, 0, 0, 0.12),
                                    width: 1,
                                  ),
                                ),

                                child: Row(
                                    children: [
                                      SizedBox(width: 10),

                                      Text(
                                        ' How should I prepare my laundry for \n pickup? ',
                                        style: TextStyle(
                                          color: Color.fromRGBO(15, 15, 20, 1),
                                          fontSize: 14,
                                        ),
                                      ),
                                      Spacer(), // This will push the arrow to the right end
                                      Image.asset(
                                        "assets/chevrondown.png", // Path to your arrow image
                                        width: 24,
                                        height: 24,
                                      ),
                                      SizedBox(width: 10),
                                    ] ) ),
                            SizedBox(height: 20),

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
                                      spreadRadius: 2, // Spread radius
                                      blurRadius: 4, // Blur radius
                                      offset: Offset(2, 1), // Shadow offset
                                    ),
                                  ],
                                ),
                                height: 79,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    SizedBox(width: 10,),
                                    Expanded(
                                      child:
                                      TextField(
                                        decoration: InputDecoration(
                                          hintText: "Have another question?",
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

                                onPressed: () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) => const HelpScreen2()));

                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  minimumSize: Size(233, 40),
                                  backgroundColor: Colors.blue,

                                ),
                                child: Text(
                                  "Submit",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white
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
