import 'package:card_game/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuyJemsPopup extends StatefulWidget {
  @override
  _BuyJemsPopupState createState() => _BuyJemsPopupState();
}

class _BuyJemsPopupState extends State<BuyJemsPopup> with SingleTickerProviderStateMixin {

  AnimationController controller;
  Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 450));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticInOut);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Container(
            width: MediaQuery.of(context).size.width/1.2,
            padding: EdgeInsets.fromLTRB(24, 50, 24, 24),
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/icons/gems2x.png',
                ),
                SizedBox(height: 40,),
                Text(
                  'Buy Extra Number',
                  style: GoogleFonts.lato(
                    color: Color(0xFF11366A),
                    fontSize: 24,
                  ),
                ),
                Text(
                  '?',
                  style: GoogleFonts.lato(
                    color: Color(0xFF11366A),
                    fontSize: 54,
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFF5364),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 44, vertical: 12),
                  child: Text(
                    'Buy now with 1 gems',
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  'Number are randomly generated \n'
                      'You can buy before 20th of every month',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    color: AppTheme.statusTextColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
