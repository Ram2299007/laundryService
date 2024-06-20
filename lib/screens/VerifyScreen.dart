import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:laundryservice/screens/CreatePasswordScreen.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final TextEditingController textEditingController = TextEditingController();
  List<FocusNode> focusNodes =
      List.generate(5, (_) => FocusNode()); // Create 5 focus nodes

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
                  child: Image.asset('assets/verify.png'),
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

                        Align(
                          alignment: Alignment.topLeft,
                          child: Text("Verify it's you",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 22))),
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                              "OTP has sent to your registered\nmobile number XXXXXXXX09, we \nare auto fetching, please wait.",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16))),
                        ),

                        const SizedBox(height: 23.0),

                        OtpTextField(
                          fieldHeight: 50,
                          fieldWidth: 50,
                          numberOfFields: 5,
                          borderColor: const Color(0xFF512DA8),
                          //set to true to show as box or false to show as dash
                          showFieldAsBox: true,
                          textStyle: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16)),
                          //runs when a code is typed in
                          onCodeChanged: (String code) {
                            //handle validation or checks here
                          },
                          //runs when every textfield is filled
                        // end onSubmit
                        ),

                        // todo button

                        const SizedBox(
                          height: 30,
                        ),

                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const CreatePasswordScreen()),
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
                            "Create password",
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
                            Text("Resend OTP in",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16))),
                            const SizedBox(width: 5),
                            InkWell(
                              child: Text(
                                "00 : 30 Sec",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                    ),
                              ),
                              onTap: () {
                                //todo to call sign up activity
                              },
                            )
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
