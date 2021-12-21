import 'package:dots_indicator/dots_indicator.dart';
import 'package:fashion_store/Home/home.dart';
import 'package:fashion_store/OnBoarding/pages/page_1.dart';
import 'package:fashion_store/OnBoarding/pages/page_2.dart';
import 'package:fashion_store/OnBoarding/pages/page_3.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  double currentIndex = 0;
  final controller = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            onPageChanged: (index) {
              setState(() {
                currentIndex = index.toDouble();
              });
            },
            children: const [
              Page1(),
              Page2(),
              Page3(),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DotsIndicator(
                dotsCount: 3,
                position: currentIndex,
                decorator: DotsDecorator(
                  activeColor: Colors.black,
                  size: Size.square(5.0),
                  activeSize: Size(10.0, 5.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(30)),
                    color: Colors.black,
                  ),
                  padding: EdgeInsets.only(
                    left: 45,
                    right: 44,
                  ),
                  child: Row(
                    children: const [
                      Text(
                        "Get Started",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: "Sen",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
