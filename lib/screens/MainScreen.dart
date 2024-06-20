
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundryservice/screens/HelpScreen.dart';
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
                    child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(197, 227, 255, 1),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:  15.0),
                        child: Column(
                          children: [

                            SizedBox(height: 10,),
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
                                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                      color: Color.fromRGBO(251, 253, 255, 0.5)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Row(children: [
                                      const SizedBox(width: 5,),
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
                                SizedBox(width: 10,),
                                Container(

                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                      color: Color.fromRGBO(251, 253, 255, 0.5)),
                                  child: const Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Image(image: AssetImage("assets/notifications.png"),width: 24,height: 24,)
                                    ),
                                  ),


                              ],
                            ),

                            SizedBox(height: 23,),
                            SizedBox(
                              height: 38,
                              child: Container(
                                // Container with border
                                decoration: BoxDecoration(
                                  border:
                                  Border.all(color: Color.fromRGBO(
                                      2, 2, 2, 0.4), width: 1.0),
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
                                              color: const Color.fromRGBO(2, 2, 2, 0.4)),
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                        ),
                                        style: GoogleFonts.poppins(
                                            textStyle:
                                            const TextStyle(fontSize: 16)),
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

                            SizedBox(height: 23,),
                            //todo  here we need to add viewpager


                          ],
                        ),
                      )
                    ],
                  ),
                )))),

    // todo order screen
    (context) => const SafeArea(
            child: SingleChildScrollView(
                child: Center(
                    child: Column(
          children: [Text('Order')],
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
                Navigator.pushReplacement(
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
                        Image.asset("assets/doller.png", width: 30, height: 30),
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
                Navigator.pushReplacement(
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
                    child: Transform.scale(
                      scale: 0.8,
                      // Adjust this value to change the size of the Switch
                      child: Switch(
                        value: false,
                        onChanged: (value) {
                          // Handle switch toggle
                        },
                      ),
                    ),
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