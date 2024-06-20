import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'MainScreen.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  bool isChecked = false;
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
                  child: Image.asset('assets/create_pass.png'),
                ),

                const SizedBox(height: 10.0),

                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(172, 173, 175, 0.12),
                    // Background color
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        const SizedBox(height: 23.0),
                        Text("Create Password",
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
                                  width: 50, // Adjust width as needed
                                  child: Row(
                                    // Inner row for flag and code
                                    children: [
                                      const SizedBox(width: 15),
                                      Image.asset(
                                        "assets/lock.png",
                                        // Replace with your flag image path
                                        width: 24,
                                        height: 24,
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
                                Expanded(
                                  // Text field takes remaining space
                                  child: Container(
                                    // Wrap TextField with Container for margin
                                    margin: const EdgeInsets.only(left: 15.0),
                                    // Apply 10px left margin
                                    child: TextField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        hintText: "Confirm Password",
                                        hintStyle: GoogleFonts.poppins(
                                            fontSize: 16,
                                            color: Colors.grey.shade400),
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                      ),
                                      style: GoogleFonts.poppins(
                                          textStyle:
                                              const TextStyle(fontSize: 16)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  // Container for flag and code
                                  width: 50, // Adjust width as needed
                                  child: Row(
                                    // Inner row for flag and code
                                    children: [
                                      const SizedBox(width: 10),
                                      Image.asset(
                                        "assets/visibility_off.png",
                                        // Replace with your flag image path
                                        width: 24,
                                        height: 24,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // todo button

                        const SizedBox(
                          height: 60,
                        ),

                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Mainscreen()),
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
                            "Sign Up",
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Checkbox(

                              value: isChecked,
                              onChanged: (newValue) {
                                setState(() {
                                  isChecked = newValue!; // Update state on change
                                });
                              },
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("By creating an account you confirm",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 15))),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      child: Text(
                                        "Terms of use",
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                color: Colors.blue,

                                                fontSize: 15),
                                            decoration:
                                                TextDecoration.underline),
                                      ),
                                      onTap: () {
                                        //todo to call sign up activity
                                      },
                                    ),
                                    Text("  and  ",
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                color: Colors.black,

                                                fontSize: 15))),
                                    InkWell(
                                      child: Text(
                                        "Privacy policy",
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                color: Colors.blue,

                                                fontSize: 15),
                                            decoration:
                                                TextDecoration.underline),
                                      ),
                                      onTap: () {
                                        //todo to call sign up activity
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 200,
                        )
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
