import 'package:card_game/config/provider/card_position_provider.dart';
import 'package:card_game/config/theme/app_theme.dart';
import 'package:card_game/config/widgets/drawer_items.dart';
import 'package:card_game/config/widgets/game_status_text.dart';
import 'package:card_game/config/widgets/open_new_card.dart';
import 'package:card_game/config/widgets/play_button.dart';
import 'package:card_game/config/widgets/play_cards.dart';
import 'package:card_game/config/widgets/possibilities/game_possibilities.dart';
import 'package:card_game/config/widgets/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  Future<bool> _willPopCallback() async {
    return true; // return true if the route to be popped
  }
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CardPositionProvider>(context);
    return WillPopScope(
      onWillPop: _willPopCallback,
      child: Scaffold(
        /*drawer: Drawer(
          child: DrawerItems(),
        ),*/
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: Icon(
            Icons.menu,
            size: 35,
          ),
          title: Image.asset(
            'assets/icons/card-logo-4x.png',
            width: 35,
            height: 354,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  Image.asset(
                    'assets/icons/gems2x.png',
                    width: 25,
                    height: 25,
                  ),
                  SizedBox(width: 10,),
                  Text(
                    '12',
                    style: GoogleFonts.bebasNeue(
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                //TopBar(),
                SizedBox(height: 10,),
                Text(
                  '0 pts',
                  style: GoogleFonts.lato(
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 215,
                  child: PlayCards(),
                ),
                SizedBox(height: 50,),
                provider.canOpenMysteryCard ? OpenCardButton() : PlayButton(),
                SizedBox(height: 10,),
                GameStatusText(),
                SizedBox(height: 40,),
                GamePossibilities(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
