import 'package:card_game/config/theme/app_theme.dart';
import 'package:card_game/config/widgets/menu_widgets/buy_jems_popup.dart';
import 'package:card_game/config/widgets/possibilities/tier_items.dart';
import 'package:flutter/material.dart';

class ExtraNumberContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    tierTap(){
      showDialog(
        context: context,
        builder: (_){
          return BuyJemsPopup();
        },);
    }
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
              color: AppTheme.tierContainerColor
          ),
          child: TierItems(
            tierTitle: 'Share Facebook',
            tierSubTitle: 'Public share needed',
            tierPoints: 'Extra Gem',
            pointContainerColor: Color(0xFF7DBF00),
            onTierTap: tierTap,
          ),
        ),
        SizedBox(height: 10,),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
              color: AppTheme.tierContainerColor
          ),
          child: TierItems(
            tierTitle: 'Invite Friend',
            tierSubTitle: 'Your get their 5% permenetly if they win',
            tierPoints: 'Claim 1 Gem',
            pointContainerColor: Color(0xFFBEBEBE),
          ),
        ),
      ],
    );
  }
}
