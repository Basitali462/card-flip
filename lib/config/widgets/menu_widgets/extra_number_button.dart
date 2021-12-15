import 'package:card_game/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExtraNumberButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
        decoration: BoxDecoration(
          color: AppTheme.btnBgColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Text(
          'Extra Number',
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
