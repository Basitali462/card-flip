import 'package:card_game/config/provider/card_position_provider.dart';
import 'package:card_game/config/theme/app_theme.dart';
import 'package:card_game/screens/home_screen.dart';
import 'package:card_game/screens/menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CardPositionProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme.appTheme,
        home: Home(),
      ),
    );
  }
}
