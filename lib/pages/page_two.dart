import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_gov_assist/utils/appbar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwo();
}

class _PageTwo extends State<PageTwo> {
  final _pagecontroller = PageController(); //pageindicator it is

  String dropdownvalue =
      '--Select One--'; //for dropdown menu initial selected value
  var items = [
    'Delhi',
    'Uttar Pradesh',
    'Haryana',
    'Punjab',
    '--Select One--'
  ]; //list for dropdown_state
  var caste = [
    'General',
    'OBC',
    'SC',
    'ST',
    '--Select One--'
  ]; //list for dropdown_caste
  var employment = [
    'Employed',
    'Unemployed',
    '--Select One--'
  ]; //list for dropdown_employment

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: MyAppBar(),
        ),

        //29th dec 2024:
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50, left: 30, right: 20),
              child: Text(
                "Help us find the Best Schemes for you",
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontSize: 18.00,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SmoothPageIndicator(
              controller: _pagecontroller,
              count: 4,
              effect: WormEffect(
                dotHeight: 13,
                dotWidth: 13, //pageindicator it is
                activeDotColor: Color.fromARGB(255, 0, 157, 255),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 50, right: 115),
                child: Text("Please select your state",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                      fontSize: 18.00,
                      fontWeight: FontWeight.bold,
                    )))),

            Container(
                margin: EdgeInsets.only(
                    top: 20, left: 30, right: 20), //box decoration here
                width: 346,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 217, 217, 217),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: DropdownButton(
                  //Initialvalue in the box

                  isExpanded: true,
                  value: dropdownvalue,
                  icon: const Icon(Icons.arrow_drop_down),
                  dropdownColor: Colors.white,
                  style: const TextStyle(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),

                  //Array list
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                )),

            Container(
                margin: EdgeInsets.only(
                  top: 50,
                ),
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: '*',
                      style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                        fontSize: 18.00,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 227, 65, 65),
                      ))),
                  TextSpan(
                    text: 'Please select your area of residence',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        fontSize: 18.00,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  )
                ]))),

            //Rural
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {
                        // rural button functions
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor:
                            Color.fromARGB(255, 217, 217, 217), // Text color
                        minimumSize:
                            Size(double.infinity, 43), // Height adjustment
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10), // Border radius
                        ),
                      ),
                      child: Text(
                        'Rural',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle "Urban" button press
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor:
                            Color.fromARGB(255, 217, 217, 217), // Text color
                        minimumSize:
                            Size(double.infinity, 43), // Height adjustment
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10), // Border radius
                        ),
                      ),
                      child: Text(
                        'Urban',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
                margin: EdgeInsets.only(top: 50, left: 30, right: 182),
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: '*',
                      style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                        fontSize: 18.00,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 227, 65, 65),
                      ))),
                  TextSpan(
                    text: 'Caste/Community',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        fontSize: 18.00,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  )
                ]))),

            Container(
                margin: EdgeInsets.only(
                    top: 20, left: 30, right: 20), //box decoration here
                width: 346,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 217, 217, 217),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: DropdownButton(
                  //Initialvalue in the box

                  isExpanded: true,
                  value: dropdownvalue,
                  icon: const Icon(Icons.arrow_drop_down),
                  dropdownColor: Colors.white,
                  style: const TextStyle(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),

                  //Array list
                  items: items.map((String caste) {
                    return DropdownMenuItem(
                      value: caste,
                      child: Text(caste),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                )),

            Container(
                margin: EdgeInsets.only(top: 50, left: 40, right: 182),
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: '*',
                      style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                        fontSize: 18.00,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 227, 65, 65),
                      ))),
                  TextSpan(
                    text: 'Employment Status',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        fontSize: 18.00,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  )
                ]))),

            Container(
                margin: EdgeInsets.only(
                    top: 20, left: 30, right: 20), //box decoration here
                width: 346,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 217, 217, 217),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: DropdownButton(
                  //Initialvalue in the box

                  isExpanded: true,
                  value: dropdownvalue,
                  icon: const Icon(Icons.arrow_drop_down),
                  dropdownColor: Colors.white,
                  style: const TextStyle(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),

                  //Array list
                  items: items.map((String employment) {
                    return DropdownMenuItem(
                      value: employment,
                      child: Text(employment),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                )),

            Container(
              margin: EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 110,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            'Next',
                            style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.arrow_right_alt,
                            size: 30,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
