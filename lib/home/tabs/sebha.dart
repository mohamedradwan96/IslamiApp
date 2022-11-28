import 'package:flutter/material.dart';

class SebhaScreen extends StatelessWidget {
  const SebhaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/background.png",
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Scaffold(
          body: Center(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/sebhabody.png",
                  width: 180,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
