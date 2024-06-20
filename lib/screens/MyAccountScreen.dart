import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Myaccountscreen extends StatefulWidget {
  const Myaccountscreen({super.key});

  @override
  State<Myaccountscreen> createState() => _MyaccountscreenState();
}

class _MyaccountscreenState extends State<Myaccountscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
        child: Center(

        child: Column(
        children: [
          const SizedBox(height: 23.0),

        Text(
        "My Profile", // Replace with your country code
        style: GoogleFonts.poppins(
        fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
    ),
          SizedBox(height: 23.0),
          Container(
            alignment: Alignment.center,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/rectangle.png', // Path to your background image
                  width: 90, // Adjust the width as needed
                  height: 90, // Adjust the height as needed
                ),
                Positioned(
                  // Position the overlay image within the background image
                  top: 64, // Adjust the top position as needed
                  left: 64, // Adjust the left position as needed
                  child: Image.asset(
                    'assets/imgpsh.png', // Path to your overlay image
                    width: 27, // Adjust the width as needed
                    height: 27, // Adjust the height as needed
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18),
          Align(alignment: Alignment.center,child:  Container(
            alignment: Alignment.center,
            width: 393,
            height: 63,
            color: Color.fromRGBO(197, 227, 255, 1),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(

                    children: [
                      SizedBox(width: 30),
                      Text(" Available Points:",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16))),
                      SizedBox(width: 15),

                      Container(
                          decoration:
                          BoxDecoration(
                            color: Color.fromRGBO(255, 240, 178, 1), // Background color
                            border: Border.all(
                              color: Color.fromRGBO(251, 133, 0, 1), // Border color
                              width: 1, // Border width
                            ),
                            borderRadius: BorderRadius.circular(3.7), // Rounded corners (optional)
                          ),
                          child:Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Row(children: [
                              Image.asset(
                                'assets/imgps.png', // Path to your image
                                width: 12.42, // Specify the width of the image
                                height: 12.42, // Specify the height of the image
                              ),
                              Text(" 200",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.7))),
                            ],),
                          )

                      )   ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("1 SAR = 100",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 10))),
                    SizedBox(width: 5,),
                    Image(image: AssetImage("assets/imgps.png"),
                      height: 8,
                    width: 8,),
                    SizedBox(width: 10,)

                  ],
                ),
              ],
            ),
          ) ,),


          SizedBox(width: 100),
          SizedBox(height: 20),
           Column(
             children: [
               Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child:
                    Text("Phone number",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 15))),
                  ),
                ],
                         ),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child:
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(217, 217, 217, 1).withOpacity(0.5), // Shadow color
                        spreadRadius: 1, // Spread radius
                        blurRadius: 1, // Blur radius
                        offset: Offset(0.5, 1), // Shadow offset
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10,),

                      Text("+91",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13))),
                      SizedBox(width: 10,),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Enter your mobile number",
                            hintStyle: GoogleFonts.poppins(
                                textStyle:
                                const TextStyle(fontSize: 13,color: Colors.grey,fontWeight:  FontWeight.w400,)
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
                      Spacer(),
                      Image.asset(
                        "assets/pensil.png", // Path to your arrow image
                        width: 35,
                        height: 35,
                      ),
                      SizedBox(width: 10,)
                    ],
                  ),

                ),
                         ),

               SizedBox(height: 20),
               Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 16),
                     child:
                     Text("Name",
                         style: GoogleFonts.poppins(
                             textStyle: const TextStyle(
                                 color: Colors.black,
                                 fontWeight: FontWeight.w400,
                                 fontSize: 15))),
                   ),
                 ],
               ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 15.0),
                 child:
                 Container(
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(8),
                     boxShadow: [
                       BoxShadow(
                         color: Color.fromRGBO(217, 217, 217, 1).withOpacity(0.5), // Shadow color
                         spreadRadius: 1, // Spread radius
                         blurRadius: 1, // Blur radius
                         offset: Offset(0.5, 1), // Shadow offset
                       ),
                     ],
                   ),
                   child: Row(
                     children: [
                       SizedBox(width: 10,),

                       SizedBox(width: 10,),
                       Expanded(
                         child: TextField(
                           decoration: InputDecoration(
                             hintText: "Enter Your Name",
                             hintStyle: GoogleFonts.poppins(
                                 textStyle:
                                 const TextStyle(fontSize: 13,color: Colors.grey,fontWeight:  FontWeight.w400,)
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
                       Spacer(),
                       Image.asset(
                         "assets/pensil.png", // Path to your arrow image
                         width: 35,
                         height: 35,
                       ),
                       SizedBox(width: 10,)
                     ],
                   ),

                 ),
               ),

               SizedBox(height: 20),
               Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 16),
                     child:
                     Text("Email Id",
                         style: GoogleFonts.poppins(
                             textStyle: const TextStyle(
                                 color: Colors.black,
                                 fontWeight: FontWeight.w400,
                                 fontSize: 15))),
                   ),
                 ],
               ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 15.0),
                 child:
                 Container(
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(8),
                     boxShadow: [
                       BoxShadow(
                         color: Color.fromRGBO(217, 217, 217, 1).withOpacity(0.5), // Shadow color
                         spreadRadius: 1, // Spread radius
                         blurRadius: 1, // Blur radius
                         offset: Offset(0.5, 1), // Shadow offset
                       ),
                     ],
                   ),
                   child: Row(
                     children: [
                       SizedBox(width: 10,),

                       SizedBox(width: 10,),
                       Expanded(
                         child: TextField(
                           decoration: InputDecoration(
                             hintText: "Enter your Email Id",
                             hintStyle: GoogleFonts.poppins(
                                 textStyle:
                                 const TextStyle(fontSize: 13,color: Colors.grey,fontWeight:  FontWeight.w400,)
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
                       Spacer(),
                       Image.asset(
                         "assets/pensil.png", // Path to your arrow image
                         width: 35,
                         height: 35,
                       ),
                       SizedBox(width: 10,)
                     ],
                   ),

                 ),
               ),

               SizedBox(height: 20),
               Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 16),
                     child:
                     Text("Location",
                         style: GoogleFonts.poppins(
                             textStyle: const TextStyle(
                                 color: Colors.black,
                                 fontWeight: FontWeight.w400,
                                 fontSize: 15))),
                   ),
                 ],
               ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 15.0),
                 child:
                 Container(
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(8),
                     boxShadow: [
                       BoxShadow(
                         color: Color.fromRGBO(217, 217, 217, 1).withOpacity(0.5), // Shadow color
                         spreadRadius: 1, // Spread radius
                         blurRadius: 1, // Blur radius
                         offset: Offset(0.5, 1), // Shadow offset
                       ),
                     ],
                   ),
                   child: Row(
                     children: [
                       SizedBox(width: 10,),

                       SizedBox(width: 10,),
                       Expanded(
                         child: TextField(
                           decoration: InputDecoration(
                             hintText: "Enter your Location",
                             hintStyle: GoogleFonts.poppins(
                                 textStyle:
                                 const TextStyle(fontSize: 13,color: Colors.grey,fontWeight:  FontWeight.w400,)
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
                       Spacer(),
                       Image.asset(
                         "assets/pensil.png", // Path to your arrow image
                         width: 35,
                         height: 35,
                       ),
                       SizedBox(width: 10,)
                     ],
                   ),

                 ),
               ),
               SizedBox(height: 43,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 60.0),
                 child: ElevatedButton(
                   onPressed: () {},
                   style: ElevatedButton.styleFrom(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(8.0),
                     ),
                     minimumSize: const Size(double.infinity, 48),
                     backgroundColor: Colors.blue
                     ,
                   ),
                   child: Text(
                     "Update",
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
        ],
     )
        )
        )
      )
    );

  }
}
