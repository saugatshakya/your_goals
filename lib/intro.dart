import 'package:flutter/material.dart';
import 'package:yourgoals/data/data.dart';

class Slider extends StatelessWidget {
  final imageAssetPath, title, desc;
  Slider({this.imageAssetPath, this.title, this.desc});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(imageAssetPath), fit: BoxFit.cover)),
      child: Container(
        color: Colors.black38,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                margin: EdgeInsets.fromLTRB(10, 250, 0, 10),
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      letterSpacing: 5,
                      fontFamily: "Hearts"),
                  textAlign: TextAlign.center,
                )),
            Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Center(
                    child: Text(desc,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            fontFamily: "Hearts"),
                        textAlign: TextAlign.center)))
          ],
        ),
      ),
    );
  }
}

class Starter extends StatefulWidget {
  @override
  _StarterState createState() => _StarterState();
}

class _StarterState extends State<Starter> {
  List<SliderModel> slides = new List<SliderModel>();
  int currentIndex = 0;
  bool i = true;
  PageController pageController = new PageController(initialPage: 0);
  @override
  void initState() {
    super.initState();
    slides = getSlides();
  }

  Widget pageIndexIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2),
      height: isCurrentPage ? 10 : 6,
      width: isCurrentPage ? 10 : 6,
      decoration: BoxDecoration(
          color: isCurrentPage ? Colors.yellow[800] : Colors.grey[300],
          borderRadius: BorderRadius.circular(12)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
            controller: pageController,
            itemCount: slides.length,
            onPageChanged: (val) {
              setState(() {
                currentIndex = val;
              });
            },
            itemBuilder: (context, index) {
              return Slider(
                imageAssetPath: slides[index].getImageAssetPath(),
                title: slides[index].getTitle(),
                desc: slides[index].getDesc(),
              );
            }),
        bottomSheet: currentIndex != slides.length - 1
            ? Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [Colors.grey[900], Colors.grey[700], Colors.white],
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                )),
                height: 60,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          pageController.animateToPage(slides.length - 1,
                              duration: Duration(milliseconds: 400),
                              curve: Curves.linear);
                        },
                        child: Text('SKIP')),
                    Row(
                      children: <Widget>[
                        for (int i = 0; i < slides.length; i++)
                          currentIndex == i
                              ? pageIndexIndicator(true)
                              : pageIndexIndicator(false)
                      ],
                    ),
                    GestureDetector(
                        onTap: () {
                          pageController.animateToPage(currentIndex + 1,
                              duration: Duration(milliseconds: 400),
                              curve: Curves.linear);
                        },
                        child: Text('NEXT')),
                  ],
                ))
            : Container(
                height: 60,
                color: Colors.blue,
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/home');
                    i = false;
                  },
                  child: Text(
                    'GET STARTED NOW',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w800),
                  ),
                ),
              ),
      ),
    );
  }
}
