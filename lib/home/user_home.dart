import 'package:flutter/material.dart';
import 'package:maalhous/home/constants/color_constant.dart';
import 'package:maalhous/home/screens/home_screen.dart';


class UserHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          accentColor: kAccentColor,
          backgroundColor: kBackgroundColor
      ),
      home: HomeScreen(),
    );
  }
}
