import 'package:card_game/config/constants/keys.dart';
import 'package:card_game/config/provider/card_position_provider.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PlayCards extends StatefulWidget {
  @override
  _PlayCardsState createState() => _PlayCardsState();
}

class _PlayCardsState extends State<PlayCards> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final provider = Provider.of<CardPositionProvider>(context);
    if(provider.canShowNewCard){
      Future.delayed(Duration(seconds: 10), (){
        provider.showNewCard(0, 0, 1);
        Future.delayed(Duration(milliseconds: 250), (){
          provider.openNewCard(true);
        });
      });
    }
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        AnimatedPositioned(
          duration: Duration(milliseconds: 200),
          left: provider.startLeft,
          child: FlipCard(
            key: ConstKeys.cardKey,
            flipOnTouch: false,
            front: Image.asset(
              'assets/images/card_layer.png',
            ),
            back: Image.asset(
              'assets/images/card_ace.png',
            ),
          ),
        ),
        AnimatedOpacity(
          opacity: provider.opacity,
          duration: Duration(milliseconds: 200),
          child: FlipCard(
            key: ConstKeys.cardKey3,
            flipOnTouch: false,
            front: Image.asset(
              'assets/images/card_layer.png',
            ),
            back: Image.asset(
              'assets/images/card_jack.png',
            ),
          ),
        ),
        AnimatedPositioned(
          duration: Duration(milliseconds: 200),
          right: provider.endRight,
          child: FlipCard(
            key: ConstKeys.cardKey2,
            flipOnTouch: false,
            front: Image.asset(
              'assets/images/card_layer.png',
            ),
            back: Image.asset(
              'assets/images/card_jack.png',
            ),
          ),
        ),
      ],
    );
  }
}

