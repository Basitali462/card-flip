import 'package:card_game/config/theme/app_theme.dart';
import 'package:card_game/config/widgets/possibilities/tier_items.dart';
import 'package:flutter/material.dart';

class PenaltiesContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 24),
      decoration: BoxDecoration(
          color: AppTheme.tierContainerColor
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TierItems(
            tierTitle: 'Not in between',
            tierSubTitle: 'Not in between of two cards',
            tierPoints: '-20%',
            pointContainerColor: Color(0xFFB1B1B1),
          ),
          TierItems(
            tierTitle: 'Same card',
            tierSubTitle: 'Get any same card',
            tierPoints: '-30%',
            pointContainerColor: Color(0xFF7C7C7C),
          ),
          TierItems(
            tierTitle: 'Ultimate Same card',
            tierSubTitle: 'If you have ACE & KING get same card',
            tierPoints: '-50%',
            pointContainerColor: Color(0xFF313131),
          ),
        ],
      ),
    );
  }
}
