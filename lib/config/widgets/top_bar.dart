import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/icons/card-logo-4x.png',
          width: 1,
          height: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 42),
          child: Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              'assets/icons/gems.png',
            ),
          ),
        ),
      ],
    );
  }
}
