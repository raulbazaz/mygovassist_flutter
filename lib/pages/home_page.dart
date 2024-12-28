import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            //Ashoka Emblem Image
            const Image(
              height: 32,
              image: AssetImage(
                'assets/emblem.png',
              ),
            ),
            const SizedBox(
              width: 10,
            ),

            Text(
              "|",
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  fontSize: 24.00,
                ),
              ),
            ),

            const SizedBox(
              width: 10,
            ),
            //App Name Text
            Text(
              "MyGovAssist",
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  fontSize: 16.00,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(
              width: 10,
            ),

            Text(
              "|",
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  fontSize: 24.00,
                ),
              ),
            ),

            const SizedBox(
              width: 10,
            ),

            const Image(
              height: 32,
              image: AssetImage(
                'assets/dig_ind.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
