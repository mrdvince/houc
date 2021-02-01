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
  PageController pageController = new PageController();
  int slideIndex = 0;

  // @override
  // void initState() {
  //   List slides = getSlides();
  //
  // }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xFF301E2F),
      body: Container(
        height: mq.size.height - 100,
        child: PageView(
            onPageChanged: (index) {
              setState(() {
                slideIndex = index;
              });
            },
            controller: pageController,
            children: [
              _ListTileWidget(mq: mq, slides: slides, index: 0),
              _ListTileWidget(mq: mq, slides: slides, index: 1),
              _ListTileWidget(mq: mq, slides: slides, index: 2),
              _ListTileWidget(mq: mq, slides: slides, index: 3),
            ]),
      ),
    );
  }
}

class _ListTileWidget extends StatelessWidget {
  const _ListTileWidget({
    Key key,
    @required this.mq,
    @required this.slides,
    @required this.index,
  }) : super(key: key);

  final MediaQueryData mq;
  final List slides;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: mq.size.height - 100,
        padding: EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(slides[index].imageAssetPath),
            SizedBox(
              height: 40,
            ),
            Text(
              slides[index].title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFFFAD3A),
                  fontSize: 26),
            ),
            SizedBox(
              height: 20,
            ),
            Text(slides[index].desc,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF524D63),
                    fontSize: 18))
          ],
        ));
  }
}
