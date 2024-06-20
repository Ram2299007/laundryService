import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'SignUpScreen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                    child: Image.asset('assets/signinpng.png'),
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
                        Text("Sign in",
                            style:  GoogleFonts.poppins(
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
                        const SizedBox(height: 23.0),
                        SizedBox(
                          height: 48,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              hintText: "Enter your password",
                              hintStyle: GoogleFonts.poppins(
                                  fontSize: 16,
                                  color: Colors.grey
                                      .shade400), // Adjust shade for readability
                            ),
                            style: GoogleFonts.poppins(fontSize: 16),
                            obscureText: true, // Securely hide password input
                            textInputAction: TextInputAction
                                .done, // Optional: "Done" button on keyboard
                          ),
                        ),
                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.topRight,
                          child: Text("Forgot Password?",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14))),
                        ),

                        // todo button

                        const SizedBox(
                          height: 30,
                        ),

                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            minimumSize: const Size(double.infinity, 48),
                            backgroundColor: Colors.blue,
                          ),
                          child: Text(
                            "Log In",
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
                            Text("New User?",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16))),
                            const SizedBox(width: 5),

                            InkWell(
                              child:Text("Sign up",
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
                                  MaterialPageRoute(builder: (context) => const SignUpScreen()),
                                );

                              },
                            )

                          ],
                        ),

                        const SizedBox(height: 200,)

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
