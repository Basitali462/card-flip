import 'package:card_game/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 12),
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Icon(
              Icons.close,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 12),
            child: Text(
              'Home',
              style: GoogleFonts.notoSans(
                color: Color(0xFF11366A),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Text(
            'My Account (login)',
            style: GoogleFonts.notoSans(
              color: Color(0xFF11366A),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => Home()));
            },
            child: Text(
              '- Profile',
              style: GoogleFonts.notoSans(
                color: Color(0xFF11366A),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Text(
            '- Login',
            style: GoogleFonts.notoSans(
              color: Color(0xFF11366A),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 12,),
          Padding(
            padding: EdgeInsets.only(bottom: 12),
            child: Text(
              'How it works',
              style: GoogleFonts.notoSans(
                color: Color(0xFF11366A),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 12),
            child: Text(
              'Result History',
              style: GoogleFonts.notoSans(
                color: Color(0xFF11366A),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 12),
            child: Text(
              'Contact Us',
              style: GoogleFonts.notoSans(
                color: Color(0xFF11366A),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 8),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            decoration: BoxDecoration(
              color: Color(0xFF11366A),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Text(
              'Login',
              style: GoogleFonts.notoSans(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 8),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFF11366A),
                width: 1
              ),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Text(
              'Register',
              style: GoogleFonts.notoSans(
                fontSize: 18,
                color: Color(0xFF11366A),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
