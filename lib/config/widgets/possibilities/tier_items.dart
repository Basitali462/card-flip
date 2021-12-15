import 'package:card_game/config/theme/app_theme.dart';
import 'package:card_game/config/widgets/menu_widgets/buy_jems_popup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TierItems extends StatelessWidget {
  final String tierTitle;
  final String tierSubTitle;
  final String tierPoints;
  final Color pointContainerColor;
  final Function onTierTap;

  TierItems({
    this.tierTitle,
    this.tierSubTitle,
    this.tierPoints,
    this.pointContainerColor,
    this.onTierTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                FittedBox(
                  fit: BoxFit.fill,
                  child: Text(
                    tierTitle,
                    style: GoogleFonts.lato(
                      fontSize: 18,
                    ),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.fill,
                  child: Text(
                    tierSubTitle,
                    maxLines: 2,
                    style: GoogleFonts.lato(
                      color: AppTheme.statusTextColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 10,),
          GestureDetector(
            onTap: onTierTap,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              decoration: BoxDecoration(
                color: pointContainerColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                tierPoints,
                style: GoogleFonts.lato(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
