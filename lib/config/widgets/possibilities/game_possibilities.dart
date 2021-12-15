import 'package:card_game/config/widgets/possibilities/penalties_container.dart';
import 'package:card_game/config/widgets/possibilities/reward_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GamePossibilities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Reward Tiers',
          style: GoogleFonts.lato(
            fontSize: 24,
          ),
        ),
        SizedBox(height: 20,),
        RewardContainer(),
        SizedBox(height: 40,),
        Text(
          'Penalties Deduction',
          style: GoogleFonts.lato(
            fontSize: 24,
          ),
        ),
        SizedBox(height: 20,),
        PenaltiesContainer(),
      ],
    );
  }
}
