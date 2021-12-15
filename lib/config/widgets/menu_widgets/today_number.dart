import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TodayNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '21',
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
            fontSize: 120,
            color: Color(0xFF11366A),
          ),
        ),
        Text(
          'YOUR NUMBER',
          style: GoogleFonts.lato(
            color: Color(0xFF11366A),
            fontSize: 24,
          ),
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'for',
              style: GoogleFonts.lato(
                  fontSize: 18
              ),
            ),
            SizedBox(width: 10,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  width: 2,
                  color: Color(0xFF333333),
                ),
              ),
              child: Text(
                '22 June 2021',
                style: GoogleFonts.lato(
                  fontSize: 16,
                  color: Color(0xFF363636),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
