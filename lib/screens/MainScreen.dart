import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundryservice/screens/CurrentBalance.dart';
import 'package:laundryservice/screens/HelpScreen.dart';
import 'package:laundryservice/screens/Notifications.dart';
import 'package:laundryservice/screens/OffersAndPromotions.dart';
import 'package:laundryservice/screens/TransactionHistory.dart';
import 'MyAccountScreen.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  int _selectedIndex = 0;
  bool light = true;

  late final BuildContext buildContext;

  final List<Widget Function(BuildContext)> _pages = [
    // todo home screen
    (context) => SafeArea(
            child: SingleChildScrollView(
                child: Center(
                    child: Column(
                      children: [
                        Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(197, 227, 255, 1),
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                        child: Column(
                                          children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Image(
                              image: AssetImage("assets/location_on.png"),
                              width: 16,
                              height: 21,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text("Viman Nagar, Pune",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15))),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 118,
                              height: 31,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.0)),
                                  color: Color.fromRGBO(251, 253, 255, 0.5)),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Row(children: [
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Image(
                                    image: AssetImage("assets/lan.png"),
                                    width: 16,
                                    height: 16,
                                  ),
                                  const VerticalDivider(
                                      color: Color.fromRGBO(220, 222, 224, 1),
                                      thickness: 1),
                                  Text(
                                    "English",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontSize: 13, color: Colors.black)),
                                  ),
                                  // todo rgba(220, 222, 224, 1)
                                  const VerticalDivider(
                                      color: Color.fromRGBO(220, 222, 224, 1),
                                      thickness: 1),
                                  const Image(
                                    image: AssetImage("assets/down_arrow.png"),
                                    width: 12,
                                    height: 12,
                                  ),
                                ]),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Container(
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4.0)),
                                    color: Color.fromRGBO(251, 253, 255, 0.5)),
                                child: const Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Image(
                                      image: AssetImage("assets/notifications.png"),
                                      width: 24,
                                      height: 24,
                                    )),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Notifications()));
                              },
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 23,
                        ),
                        SizedBox(
                          height: 38,
                          child: Container(
                            // Container with border
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromRGBO(2, 2, 2, 0.4), width: 1.0),
                              // Border properties
                              borderRadius:
                                  BorderRadius.circular(8.0), // Rounded corners
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
                                        "assets/search.png",
                                        // Replace with your flag image path
                                        width: 18,
                                        height: 18,
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  // Text field takes remaining space
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Search",
                                      hintStyle: GoogleFonts.poppins(
                                          fontSize: 17,
                                          color:
                                              const Color.fromRGBO(2, 2, 2, 0.4)),
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                    ),
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(fontSize: 16)),
                                    keyboardType: TextInputType.phone,
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
                                        "assets/keyboard_voice.png",
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

                        SizedBox(
                          height: 23,
                        ),
                        //todo  here we need to add viewpager
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                        SizedBox(height: 20),
                        Column(
                          children: [
                            Row(
                              children: [

                                
                                
                            ],)


                          ],)
                      ],
                    )))),

    // todo order screen
    (context) => SafeArea(
            child: SingleChildScrollView(
                child: Center(
                    child: Column(
          children: [
            Text(
              "My Order", // Replace with your country code
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 252, 252, 1),
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(217, 217, 217, 1)
                          .withOpacity(0.5), // Shadow color
                      spreadRadius: -1, // Spread radius
                      blurRadius: 4, // Blur radius
                      offset: Offset(2, 1), // Shadow offset
                    ),
                  ],
                ),
                height: 287,
                width: 361,
                child: Column(
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 10),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "3rd June",
                              // Replace with your country code
                              style: GoogleFonts.poppins(
                                fontSize: 13,
                                color: Color.fromRGBO(15, 15, 20, 0.7),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2,
                        ),

                        Container(
                          height: 1.0,
                          // Adjust height as needed
                          width: double.infinity,
                          // Expands to fill parent width
                          color: Color.fromRGBO(0, 0, 0, 0.12),
                        ),

                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "Order ID: 123456",
                              // Replace with your country code
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  color: Color.fromRGBO(15, 15, 20, 0.9),
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2,
                        ),

                        Container(
                          height: 1.0,
                          // Adjust height as needed
                          width: double.infinity,
                          // Expands to fill parent width
                          color: Color.fromRGBO(0, 0, 0, 0.12),
                        ),

                        SizedBox(
                          height: 15,
                        ),

                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Order details:",
                                  // Replace with your country code
                                  style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(width: 10),
                                Image.asset(
                                  'assets/prepadorder.png',
                                  // Path to your image
                                  width: 88,
                                  // Specify the width of the image
                                  height: 19, // Specify the height of the image
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 10.0),
                        // Spacing between Text and TextField
                        SizedBox(
                          height: 10,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 100.0),
                          child: Column(
                            children: [
                              SizedBox(width: 60.0),
                              Row(
                                children: [
                                  Text(
                                    "Laundry items: 14",
                                    // Replace with your country code
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Color.fromRGBO(15, 15, 20, 0.7),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(width: 10.0),
                        // Spacing between Text and TextField
                        SizedBox(
                          height: 10,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 100.0),
                          child: Column(
                            children: [
                              SizedBox(width: 60.0),
                              Row(
                                children: [
                                  Text(
                                    "Special instructions: No",
                                    // Replace with your country code
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Color.fromRGBO(15, 15, 20, 0.7),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(width: 10.0),
                        // Spacing between Text and TextField
                        SizedBox(
                          height: 10,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 100.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            // Center the column vertically within its parent

                            children: [
                              SizedBox(width: 60.0),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "SAR 48.00",
                                        // Replace with your country code
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color:
                                              Color.fromRGBO(15, 15, 20, 0.7),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Veiw more details",
                              // Replace with your country code
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: Color.fromRGBO(32, 129, 239, 1),
                                fontWeight: FontWeight.w400,

                                decoration: TextDecoration.underline,
                                decorationColor:
                                    Color.fromRGBO(32, 129, 239, 1),
                                // Customize underline color
                                decorationThickness:
                                    2.0, // Customize underline thickness// Underline the text
                              ),
                            ),
                            SizedBox(width: 10),
                          ],
                        ),

                        SizedBox(height: 20),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: Row(
                            children: [
                              SizedBox(width: 11),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  backgroundColor: Colors.white,
                                ),
                                child: Text(
                                  "Track order",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(32, 129, 239, 1)),
                                ),
                              ),
                              SizedBox(width: 10),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  backgroundColor: Colors.blue,
                                ),
                                child: Text(
                                  "Schedule delivery",
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white
                                      // Set text color to white here
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 10),
                  Text(
                    "Previous orders",
                    // Replace with your country code
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ]),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 252, 252, 1),
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(217, 217, 217, 1)
                          .withOpacity(0.5), // Shadow color
                      spreadRadius: -1, // Spread radius
                      blurRadius: 4, // Blur radius
                      offset: Offset(2, 1), // Shadow offset
                    ),
                  ],
                ),
                height: 213,
                width: 361,
                child: Column(
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 10),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "3rd May",
                              // Replace with your country code
                              style: GoogleFonts.poppins(
                                fontSize: 13,
                                color: Color.fromRGBO(15, 15, 20, 0.7),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2,
                        ),

                        Container(
                          height: 1.0,
                          // Adjust height as needed
                          width: double.infinity,
                          // Expands to fill parent width
                          color: Color.fromRGBO(0, 0, 0, 0.12),
                        ),

                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "Order ID: 123426",
                              // Replace with your country code
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  color: Color.fromRGBO(15, 15, 20, 0.9),
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2,
                        ),

                        Container(
                          height: 1.0,
                          // Adjust height as needed
                          width: double.infinity,
                          // Expands to fill parent width
                          color: Color.fromRGBO(0, 0, 0, 0.12),
                        ),

                        SizedBox(
                          height: 15,
                        ),

                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Order details:",
                                  // Replace with your country code
                                  style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(width: 10),
                                Image.asset(
                                  'assets/prepadorder.png',
                                  // Path to your image
                                  width: 88,
                                  // Specify the width of the image
                                  height: 19, // Specify the height of the image
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 10.0),
                        // Spacing between Text and TextField
                        SizedBox(
                          height: 10,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 100.0),
                          child: Column(
                            children: [
                              SizedBox(width: 60.0),
                              Row(
                                children: [
                                  Text(
                                    "Laundry items: 14",
                                    // Replace with your country code
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Color.fromRGBO(15, 15, 20, 0.7),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(width: 10.0),
                        // Spacing between Text and TextField
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100.0),
                          child: Column(
                            children: [
                              SizedBox(width: 60.0),
                              Row(
                                children: [
                                  Text(
                                    "Special instructions: No",
                                    // Replace with your country code
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Color.fromRGBO(15, 15, 20, 0.7),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(width: 10.0),
                        // Spacing between Text and TextField
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            // Center the column vertically within its parent

                            children: [
                              SizedBox(width: 60.0),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "SAR 48.00",
                                        // Replace with your country code
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color:
                                              Color.fromRGBO(15, 15, 20, 0.7),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(width: 10.0),
                        // Spacing between Text and TextField
                        SizedBox(
                          height: 9,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100.0),
                          child: Column(
                            children: [
                              SizedBox(width: 60.0),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/frame.png',
                                    // Path to your image
                                    width: 106,
                                    // Specify the width of the image
                                    height:
                                        19, // Specify the height of the image
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        )))),
    // todo wallet screen
    // todo wallet screen
    (context) => SafeArea(
            child: SingleChildScrollView(
                child: Center(
                    child: Column(
          children: [
            Text(
              "Wallet", // Replace with your country code
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 50),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(192, 221, 255, 0.2),
                    borderRadius:
                        BorderRadius.circular(4), // Add border radius here
                  ),
                  width: 361,
                  height: 46,
                  child: Row(children: [
                    SizedBox(width: 10),

                    Center(
                      child:
                          Image.asset("assets/bank.png", width: 30, height: 30),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Current Balance",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Spacer(),
                    // This will push the arrow to the right end
                    Image.asset(
                      "assets/chevronright.png",
                      // Path to your arrow image
                      width: 7.4,
                      height: 12,
                    ),
                    SizedBox(width: 10),
                  ]),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CurrentBalance()));
              },
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(192, 221, 255, 0.2),
                    borderRadius:
                        BorderRadius.circular(4), // Add border radius here
                  ),
                  width: 361,
                  height: 46,
                  child: Row(children: [
                    SizedBox(width: 10),

                    Center(
                      child: Image.asset("assets/doller.png",
                          width: 30, height: 30),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Transaction History",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Spacer(),
                    // This will push the arrow to the right end
                    Image.asset(
                      "assets/chevronright.png",
                      // Path to your arrow image
                      width: 7.4,
                      height: 12,
                    ),
                    SizedBox(width: 10),
                  ]),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Transactionhistory()));
              },
            ),
            SizedBox(width: 80),
          ],
        )))),

    // todo Settings screen
    (context) => SafeArea(
            child: SingleChildScrollView(
                child: Center(
                    child: Column(
          children: [
            Text(
              "Settings", // Replace with your country code
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 50),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(192, 221, 255, 0.2),
                    borderRadius:
                        BorderRadius.circular(4), // Add border radius here
                  ),
                  width: 361,
                  height: 46,
                  child: Row(children: [
                    SizedBox(width: 10),

                    Center(
                      child: Image.asset("assets/profile.png",
                          width: 30, height: 30),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "My Account",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Spacer(),
                    // This will push the arrow to the right end
                    Image.asset(
                      "assets/rightarrow (2).png",
                      // Path to your arrow image
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(width: 10),
                  ]),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Myaccountscreen()));
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(192, 221, 255, 0.2),
                  borderRadius:
                      BorderRadius.circular(4), // Add border radius here
                ),
                width: 361,
                height: 46,
                child: Row(children: [
                  SizedBox(width: 10),

                  Center(
                    child:
                        Image.asset("assets/notifi.png", width: 30, height: 30),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Notifications",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Spacer(),
                  // This will push the toggle to the right end
                  Container(
                    width: 80, // Set the desired width
                    height: 4, // Set the desired height
                    alignment: Alignment.center,
                    child:
                    isSwitched(),

                  ),
                ]),
              ),
            ),
            SizedBox(width: 80),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(192, 221, 255, 0.2),
                  borderRadius:
                      BorderRadius.circular(4), // Add border radius here
                ),
                width: 361,
                height: 46,
                child: Row(children: [
                  SizedBox(width: 10),

                  Center(
                    child:
                        Image.asset("assets/lines.png", width: 30, height: 30),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Terms And Conditions",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Spacer(),
                  // This will push the arrow to the right end
                  Image.asset(
                    "assets/rightarrow (2).png",
                    // Path to your arrow image
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(width: 10),
                ]),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(192, 221, 255, 0.2),
                    borderRadius:
                        BorderRadius.circular(4), // Add border radius here
                  ),
                  width: 361,
                  height: 46,
                  child: Row(children: [
                    SizedBox(width: 10),

                    Center(
                      child: Image.asset("assets/headphone.png",
                          width: 30, height: 30),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Help And Support",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Spacer(),
                    // This will push the arrow to the right end
                    Image.asset(
                      "assets/rightarrow (2).png",
                      // Path to your arrow image
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(width: 10),
                  ]),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HelpScreen()),
                );
              },
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(192, 221, 255, 0.2),
                    borderRadius:
                        BorderRadius.circular(4), // Add border radius here
                  ),
                  width: 361,
                  height: 46,
                  child: Row(children: [
                    SizedBox(width: 10),

                    Center(
                      child: Image.asset("assets/percentage.png",
                          width: 30, height: 30),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Offers and Promotions",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Spacer(),
                    // This will push the arrow to the right end
                    Image.asset(
                      "assets/rightarrow (2).png",
                      // Path to your arrow image
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(width: 10),
                  ]),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Offersandpromotions()));
              },
            )
          ],
        )))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Light pink background
      body: _pages[_selectedIndex](context),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined),
            label: "My Orders",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: "Wallet",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: "Settings",
          ),
        ],
        onTap: _onItemTapped,
      ),
    );

    //
  }
}

bool _isSwitched = false;


class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      initialSelection: list.first,
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: isSwitched(),
    );
  }
}

class isSwitched extends StatefulWidget {
  @override
  _isSwitchedState createState() => _isSwitchedState();
}

class _isSwitchedState extends State<isSwitched> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        Switch(
          value: _isSwitched,
          onChanged: (value) {
            setState(() {
              _isSwitched = value;
            });
          },
          activeColor: Color.fromRGBO(251, 253, 255, 1), // Color of the thumb when the switch is on
          activeTrackColor: Color.fromRGBO(169, 169, 169, 1), // Color of the track when the switch is on
          inactiveThumbColor: Color.fromRGBO(251, 253, 255, 1), // Color of the thumb when the switch is off
          inactiveTrackColor: Color.fromRGBO(169, 169, 169, 1), // Color of the track when the switch is off
        ),

      ),
    );
  }
}
