import 'package:dots_indicator/dots_indicator.dart';
import 'package:fashion_store/Product/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 34),
                        children: const [
                          TextSpan(text: 'Hello,'),
                          TextSpan(
                              text: '\nAmanda',
                              style: TextStyle(
                                  color: Color(0xffFFC74A),
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Image.asset('assets/home/avatar.png')
                  ],
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Product(tag: 'product',);
                    }));
                  },
                  child: Hero(
                    tag: 'product',
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          height: 137,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xfffff3e7),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Row(
                              children: const [
                                Text(
                                  'Summer \nCollections',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Image.asset('assets/home/summer_collections.png'),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Product(tag:'product2');
                    }));
                  },
                  child: Hero(
                    tag: 'product2',
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          height: 137,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffFCDFEA),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Row(
                              children: const [
                                Text(
                                  'Winter \nCollections',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Image.asset('assets/home/winter_collections.png'),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  "Offers",
                  style: TextStyle(
                    color: Color(0xff262626),
                    fontSize: 34,
                    fontFamily: "Sen",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 6),
                SizedBox(
                  height: 190,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Positioned(
                        child: Container(
                          height: 137,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffEAF0FF),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        child: Image.asset('assets/home/discount.png'),
                      ),
                      Positioned(
                        right: 0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DotsIndicator(
                              dotsCount: 3,
                              position: 0,
                              decorator: DotsDecorator(
                                activeColor: Colors.black,
                                size: Size(19.0, 5.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                color: Colors.grey,
                                activeSize: Size(39.0, 5.0),
                                activeShape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                              ),
                            ),
                            SizedBox(height: 15),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 24,
                                  fontFamily: "Sen",
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                                children: const [
                                  TextSpan(
                                    text: "Get",
                                  ),
                                  TextSpan(
                                      text: " 30%",
                                      style:
                                          TextStyle(color: Color(0xff6B63DD))),
                                  TextSpan(
                                    text: " Off",
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 15),
                            Container(
                              width: 181,
                              height: 48,
                              child: Center(
                                child: Text(
                                  "Know More",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: "Sen",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30.0),
                                    bottomRight: Radius.circular(30.0)),
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
