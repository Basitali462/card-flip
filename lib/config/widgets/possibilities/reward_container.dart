import 'package:card_game/config/theme/app_theme.dart';
import 'package:card_game/config/widgets/possibilities/tier_items.dart';
import 'package:flutter/material.dart';

class RewardContainer extends StatelessWidget {
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
            tierTitle: '9-11 Possibility',
            tierSubTitle: 'non-active for a month will be locked',
            tierPoints: '10 pts',
            pointContainerColor: Color(0xFFE76F51),
          ),
          TierItems(
            tierTitle: '6-8 Possibility',
            tierSubTitle: 'whenever you get match',
            tierPoints: '15 pts',
            pointContainerColor: Color(0xFFF4A261),
          ),
          TierItems(
            tierTitle: '4-5 Possibility',
            tierSubTitle: 'matching twice in a month',
            tierPoints: '25 pts',
            pointContainerColor: Color(0xFFE9C46A),
          ),
          TierItems(
            tierTitle: '2-3 Possibility',
            tierSubTitle: 'matching third time in a month',
            tierPoints: '40 pts',
            pointContainerColor: Color(0xFF2A9D8F),
          ),
          TierItems(
            tierTitle: 'only 1 Possibility',
            tierSubTitle: 'Ultimate prize, only for level 15+',
            tierPoints: '100 pts',
            pointContainerColor: Color(0xFF264653),
          ),
        ],
      ),
    );
  }
}
