import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundryservice/screens/SignInScreen.dart';
import 'package:laundryservice/screens/VerifyScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(

            child: Column(
              children: [
                const SizedBox(height: 23.0),
                // Fixed top padding
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.height * 0.3,
                  child: Image.asset('assets/signup.png'),
                ),

                const SizedBox(height: 10.0),




                Container(

                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(172, 173, 175, 0.12), // Background color
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                    ),
                  ),


                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        const SizedBox(height: 23.0),
                        Text("Sign Up",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 22))),
                        const SizedBox(height: 23.0),
                        SizedBox(
                          height: 48,
                          child: Container(
                            // Container with border
                            decoration: BoxDecoration(
                              border:
                              Border.all(color: Colors.grey, width: 1.0),
                              // Border properties
                              borderRadius:
                              BorderRadius.circular(4.0), // Rounded corners
                            ),

                            child: Row(
                              children: [
                                SizedBox(
                                  // Container for flag and code
                                  width: 90, // Adjust width as needed
                                  child: Row(
                                    // Inner row for flag and code
                                    children: [
                                      const SizedBox(width: 12),
                                      Image.asset(
                                        "assets/sa.png",
                                        // Replace with your flag image path
                                        width: 24,
                                        height: 24,
                                      ),
                                      const SizedBox(width: 5),
                                      // Spacing between flag and code
                                      Text(
                                        "+966", // Replace with your country code
                                        style: GoogleFonts.poppins(
                                            fontSize: 16, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  // Text field takes remaining space
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Enter your mobile number",
                                      hintStyle: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: Colors.grey.shade400),
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                    ),
                                    style: GoogleFonts.poppins(
                                        textStyle:
                                        const TextStyle(fontSize: 16)),
                                    keyboardType: TextInputType.phone,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),


                        // todo button

                        const SizedBox(
                          height: 30,
                        ),

                        ElevatedButton(
                          onPressed: () {
                            print("tapped");
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const VerifyScreen()),
                            );

                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            minimumSize: const Size(double.infinity, 48),
                            backgroundColor: Colors.blue,
                          ),

                            child: Text(
                              "Send OTP",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                                // Set text color to white here
                              ),
                            ),



                        ),

                        const SizedBox(
                          height: 30,
                        ),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already a User?",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16))),
                            const SizedBox(width: 5),

                            InkWell(
                              child:Text("Sign In",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                    decoration: TextDecoration.underline)
                                ,),
                              onTap: (){
                                //todo to call sign up activity
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const SignInScreen()),
                                );

                              },
                            )

                          ],
                        ),

                        const SizedBox(height: 250,)

                      ],
                    ),
                  ),
                ),

              ],
            ),

          ),
        ),
      ),
    );
  }
}
