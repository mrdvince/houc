import 'package:flutter/material.dart';
import 'package:maalhous/data/data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List slides = getSlides();
  @override
  Widget build(BuildContext context) {
    print(slides.length);
    final mq = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xFF301E2F),
      body: Container(
        height: mq.size.height -100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(slides[0].imageAssetPath),
              SizedBox(
                height: 40,
              ),
              Text(slides[0].title, textAlign: TextAlign.center,style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFFFAD3A),
                  fontSize: 26
              ),),
              SizedBox(
                height: 20,
              ),
              Text(slides[0].desc, textAlign: TextAlign.center,style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF524D63),
                  fontSize: 18))
            ],
          )),
    );
  }
}

