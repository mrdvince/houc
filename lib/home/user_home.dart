import 'package:flutter/material.dart';

class UserHome extends StatelessWidget {
  const UserHome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF301E2F),
          title: Text("MaalHous."),
        ),
        body: Container(
          child: Center(
            child: Text("Willkommen in MaalHous. !!"),
          ),
        ),
      ),
    );
  }
}
