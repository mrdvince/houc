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
  List<SliderModel> mySlides = <SliderModel>[];
  int slideIdx = 0;
  PageController _pageController;

  Widget _builWidgetIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
          color: isCurrentPage ? Colors.grey : Colors.grey[300],
          borderRadius: BorderRadius.circular(12.0)),
    );
  }

  @override
  void initState() {
    super.initState();
    mySlides = getSlides();
    _pageController = new PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
