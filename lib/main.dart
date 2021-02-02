import 'package:flutter/material.dart';

import 'onboarding/slides.dart';

void main() => runApp(MaalHous());

class MaalHous extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Onboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
