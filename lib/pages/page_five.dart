import 'package:flutter/material.dart';
import 'package:my_gov_assist/utils/appbar.dart';

class PageFive extends StatelessWidget {
  const PageFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(backgroundColor: Colors.white, title: MyAppBar()),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20, left: 20),
                  child: Transform.rotate(
                    angle: 3.14159, // in radians
                    child: Icon(Icons.arrow_right_alt,
                        size: 30, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(left: 20, top: 20),
                    child: Image(
                      image: AssetImage('assets/copilot.png'),
                      height: 43,
                    )),
                Container(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    "CoPilot",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 365,
              child: Container(
                padding: EdgeInsets.only(top: 600),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 250, 239, 239),
                    hintText: 'Write your message here',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 20),
                      child: ImageIcon(
                        AssetImage('assets/add_photo.png'),
                        color: Color.fromARGB(255, 0, 157, 255),
                      ),
                    ),

                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: ImageIcon(
                        AssetImage('assets/send.png'),
                        color: Color.fromARGB(255, 0, 157, 255),
                      ),
                    ),

                    // we have to add a microphone as well

                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 157, 255)),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
