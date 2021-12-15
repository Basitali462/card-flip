import 'package:card_game/config/constants/keys.dart';
import 'package:card_game/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OpenCardButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(ConstKeys.cardKey3.currentState.isFront){
          ConstKeys.cardKey3.currentState.toggleCard();
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
        decoration: BoxDecoration(
          color: AppTheme.btnBgColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Text(
          'Open Card',
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
