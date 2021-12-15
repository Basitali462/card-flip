import 'package:card_game/config/theme/app_theme.dart';
import 'package:card_game/config/widgets/drawer_items.dart';
import 'package:card_game/config/widgets/menu_widgets/extra_number_button.dart';
import 'package:card_game/config/widgets/menu_widgets/extra_number_container.dart';
import 'package:card_game/config/widgets/menu_widgets/today_number.dart';
import 'package:card_game/config/widgets/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerItems(),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            TopBar(),
            SizedBox(height: 50,),
            TodayNumber(),
            SizedBox(height: 40,),
            ExtraNumberButton(),
            SizedBox(height: 10,),
            Text(
              'Share through whatsapp 1 new register get 1 gems. \n'
                  '1 gems give you extra number on each event.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppTheme.statusTextColor,
              ),
            ),
            SizedBox(height: 30,),
            Text(
              'Get Extra Number?',
              style: GoogleFonts.lato(
                fontSize: 24,
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: SingleChildScrollView(
                child: ExtraNumberContainer(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
