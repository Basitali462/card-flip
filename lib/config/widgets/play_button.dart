import 'package:card_game/config/provider/card_position_provider.dart';
import 'package:card_game/config/theme/app_theme.dart';
import 'package:card_game/config/constants/keys.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PlayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CardPositionProvider>(context);
    return GestureDetector(
      onTap: (){
        if(!provider.canShowNewCard){
          ConstKeys.cardKey.currentState.toggleCard();
          ConstKeys.cardKey2.currentState.toggleCard();
          provider.showCard(true);
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
        decoration: provider.canShowNewCard
            ? BoxDecoration(
                border: Border.all(
                  color: Color(0xFFA3A3A3),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(18))
            : BoxDecoration(
                color: AppTheme.btnBgColor,
                borderRadius: BorderRadius.circular(18),
              ),
        child: provider.canShowNewCard
            ? Text(
                '9 Possibilities',
                style: GoogleFonts.lato(
                  color: Color(0xFFA3A3A3),
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                )
              )
            : Text(
                'START YOUR GAME',
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
      ),
    );
  }
}
