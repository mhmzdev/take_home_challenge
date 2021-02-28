import 'package:flutter/material.dart';
import 'package:take_home_challenge/challenge/const.dart';

class SharedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          "Shared Screen",
          style: kNavBarWidgetStyle,
        ),
      ),
    );
  }
}
