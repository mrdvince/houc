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
        height: mq.size.height - 150,
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
              _ListTileWidget(mq: mq, slides: slides, index: 4),
            ]),
      ),
      bottomSheet: slideIndex != slides.length -1 && slideIndex != 0 ? Container(
        height: 150,
        color: Color(0xFF301E2F),
        child: Align(
          alignment: Alignment.center,
          child: ButtonTheme(
            minWidth: 300.0,
            height: 50.0,
            child: FlatButton(
              onPressed: () { pageController.animateToPage(slideIndex+1, duration: Duration(milliseconds: 400), curve: Curves.linear);
              },
              child: const Text(
                'Next',
                style: TextStyle(color: Colors.white),
              ),
              color: Color(0xFFFFAD3A),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        ),
      ) : InkWell(
        onTap: (){
          print("Get Started Now");
        },
        child: Visibility(
          visible: slideIndex == 0 ? false : true,
          child: Container(
            height: 60,
            color: Color(0xFF524D63),
            alignment: Alignment.center,
            child: Text(
              "GET STARTED NOW",
              style: TextStyle(color: Color(0xFFFFAD3A), fontWeight: FontWeight.w600),
            ),
          ),
        ),
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
