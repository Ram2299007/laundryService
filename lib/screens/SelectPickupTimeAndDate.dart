import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

import 'MainScreen.dart';

class SelectPickupTimeAndDate extends StatefulWidget {
  const SelectPickupTimeAndDate({super.key});

  @override
  State<SelectPickupTimeAndDate> createState() => _SelectPickupTimeAndDateState();
}

class _SelectPickupTimeAndDateState extends State<SelectPickupTimeAndDate> {

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Center(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.arrow_back_ios_new,
                                  color: Color.fromRGBO(15, 15, 20, 1),
                                  // Set the color of the icon
                                  size: 14.0,
                                  // Set the size of the icon
                                  semanticLabel: 'Back'),
                              onPressed: () {
                                // Navigate to a new page
                                Navigator.pop(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Mainscreen(),
                                  ),
                                );
                              },
                            ),

                            Text(
                              'Back',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  color: Color.fromRGBO(15, 15, 20, 1),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                            ),



                          ],
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: [
                            SizedBox(width: 9),

                            Text(
                              ' Select pickup time and date ',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  color: Color.fromRGBO(15, 15, 20, 1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 12),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(

                              color: Color.fromRGBO(255, 255, 255, 1),
                              borderRadius: BorderRadius.circular(13),

                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.1).withOpacity(0.1),
                                  offset: Offset(0, 10),
                                  blurRadius: 60,
                                ),
                              ],

                            ),
                            height: 440,
                            width: 357,
                            child: Column(
                                children: [
                                  TableCalendar(
                                    calendarFormat: _calendarFormat,
                                    focusedDay: _focusedDay,
                                    firstDay: DateTime.utc(2010, 10, 16),
                                    lastDay: DateTime.utc(2030, 3, 14),
                                    onFormatChanged: (format) {
                                      setState(() {
                                        _calendarFormat = format;
                                      });
                                    },
                                    onDaySelected: (selectedDay, focusedDay) {
                                      setState(() {
                                        _selectedDay = selectedDay;
                                        _focusedDay = focusedDay;
                                      });
                                    },
                                    selectedDayPredicate: (day) {
                                      return isSameDay(_selectedDay, day);
                                    },


                                  ),
                                  Row(
                                      children: [
                                        SizedBox(width: 16),
                                        Text(
                                          'Time',
                                          style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                              color: Color.fromRGBO(15, 15, 20, 1),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 195),
                                        Image.asset(
                                          'assets/tim.png',
                                          // Path to your image
                                          width: 86,
                                          // Specify the width of the image
                                          height: 34, // Specify the height of the image
                                        ),

                                      ]

                                  ),

                                ]),
                          ),
                        ),
                        SizedBox(height: 10),

                        Row(
                            children: [
                              SizedBox(width: 15),
                              Text(
                                'Pickup date and time -',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: Color.fromRGBO(15, 15, 20, 1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),

                              SizedBox(width: 3),
                              Image.asset(
                                "assets/june.png", // Path to your arrow image
                                width: 81,
                                height: 34,
                              ),

                              SizedBox(width: 5),
                              Image.asset(
                                'assets/tim.png',
                                // Path to your image
                                width: 86,
                                // Specify the width of the image
                                height: 34, // Specify the height of the image
                              ),


                            ]),



                        SizedBox(height: 15 ),
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Text(
                              'Add Address',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(width: 20),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15,top: 13),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/black.png", // Path to your arrow image
                                        width: 13,
                                        height: 13,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/lineq.png", // Path to your arrow image
                                        height: 56,
                                      ),

                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/squre.png", // Path to your arrow image
                                        width: 10,
                                        height: 10,
                                      ),

                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child:
                                  Container(

                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(246, 246, 246, 1),
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                        color: Color.fromRGBO(0, 0, 0, 0.1),
                                        width: 1,
                                      ),
                                    ),
                                    height: 48,
                                    width: 336,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        SizedBox(width: 10),

                                        Expanded(
                                          child:

                                          Padding(
                                            padding: EdgeInsets.only(bottom: 11), // Adjust the value as needed

                                            child: TextField(
                                              decoration: InputDecoration(
                                                hintText: "From",
                                                hintStyle: GoogleFonts.poppins(
                                                    textStyle:
                                                    const TextStyle(fontSize: 13,color: Color.fromRGBO(15, 15, 20, 0.6),fontWeight:  FontWeight.w400,)
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
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                SizedBox(height: 15),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child:
                                  Container(

                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(246, 246, 246, 1),
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                        color: Color.fromRGBO(0, 0, 0, 0.1),
                                        width: 1,
                                      ),
                                    ),
                                    height: 48,
                                    width: 336,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        SizedBox(width: 10),

                                        Expanded(
                                          child:

                                          Padding(
                                            padding: EdgeInsets.only(bottom: 11), // Adjust the value as needed

                                            child: TextField(
                                              decoration: InputDecoration(
                                                hintText: "To",
                                                hintStyle: GoogleFonts.poppins(
                                                    textStyle:
                                                    const TextStyle(fontSize: 13,color: Color.fromRGBO(15, 15, 20, 0.6),fontWeight:  FontWeight.w400,)
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

                                        ),


                                      ],
                                    ),

                                  ),
                                ),

                              ],
                            ),

                          ],
                        ),

                        SizedBox(height: 15),

                        Row(
                            children: [
                              SizedBox(width: 20),

                              Text(
                                'Express Delivery',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: Color.fromRGBO(15, 15, 20, 1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              SizedBox(width:10 ),
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

                            ]),

                        SizedBox(height: 10),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 1.0),
                          child:
                          Container(

                            decoration: BoxDecoration(
                              color: Color.fromRGBO(205, 227, 255, 1),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            height: 39,
                            width: 393,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                SizedBox(width: 10),

                                Padding(
                                  padding: EdgeInsets.only(top: 8), // Adjust the value as needed
                                  child: Row(
                                    children: [
                                      SizedBox(width: 7),

                                      Text(
                                        'Total delivery Charges',
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),

                                      SizedBox(width: 108),
                                      Text(
                                        'SAR 30',
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),



                              ],
                            ),

                          ),
                        ),

                        SizedBox(height: 25),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 60.0),
                          child: ElevatedButton(

                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              minimumSize: Size(223, 40),
                              backgroundColor: Color.fromRGBO(32, 129, 239, 1),

                            ),
                            child: Text(
                              "Continue",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(251, 254, 255, 1)
                                // Set text color to white here
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 40),

                      ],
                    )))));
  }
}
