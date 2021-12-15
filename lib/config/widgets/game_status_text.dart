import 'package:card_game/config/provider/card_position_provider.dart';
import 'package:card_game/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GameStatusText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CardPositionProvider>(context);
    return Text(
      provider.canShowNewCard && provider.canOpenMysteryCard
          ? 'Open Cards, Good luck'
          : provider.canShowNewCard
          ? 'Please wait for the result cards from 4D\n Next Result card will be 23 Aug 2021, 7pm'
          : 'After start your game, you cannot skip it.',
      textAlign: TextAlign.center,
      style: GoogleFonts.lato(
        color: AppTheme.statusTextColor,
      ),
    );
  }
}
