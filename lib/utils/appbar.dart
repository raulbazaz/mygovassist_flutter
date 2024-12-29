import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        //Ashoka Emblem Image
        const Image(
          height: 36,
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
              fontSize: 28.00,
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
              fontSize: 18.00,
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
              fontSize: 28.00,
            ),
          ),
        ),

        const SizedBox(
          width: 10,
        ),

        const Image(
          height: 36,
          image: AssetImage(
            'assets/dig_ind.png',
          ),
        ),
      ],
    );
  }
}
