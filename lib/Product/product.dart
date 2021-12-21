import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  final String tag;
  const Product({Key? key, required this.tag}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: widget.tag,
      child: Scaffold(
        backgroundColor: Color(0xffFFF3E7),
        body: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 38,
                        height: 38,
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          size: 20,
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 38,
                      height: 38,
                      child: Icon(
                        Icons.favorite_border_outlined,
                        size: 20,
                      ),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 38,
                      height: 38,
                      child: Icon(
                        Icons.shopping_bag_outlined,
                        size: 20,
                      ),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Image.asset(
                      'assets/product/girl.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: 351,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
                            child: Row(
                              children: [
                                Text(
                                  "Crop Top",
                                  style: TextStyle(
                                    color: Color(0xff262626),
                                    fontSize: 24,
                                    fontFamily: "Sen",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Spacer(),
                                SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Color(0x19000000),
                                            width: 1,
                                          ),
                                        ),
                                      ),
                                      Positioned.fill(
                                        child: Align(
                                          child: Container(
                                            width: 24,
                                            height: 24,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xfffad46d),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 8),
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff6b63dd),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffDA1F00),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(24, 24, 24, 24),
                            child: Text(
                              "Size",
                              style: TextStyle(
                                color: Color(0xff262626),
                                fontSize: 20,
                                fontFamily: "Sen",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(24, 0, 24, 24),
                            child: Row(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Text(
                                      "XS",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xff8399A9),
                                        fontSize: 18,
                                        fontFamily: "Sen",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Text(
                                      "S",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xff8399A9),
                                        fontSize: 18,
                                        fontFamily: "Sen",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.black,
                                  ),
                                  child: Center(
                                    child: Text(
                                      "M",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontFamily: "Sen",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Text(
                                      "L",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xff8399A9),
                                        fontSize: 18,
                                        fontFamily: "Sen",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Text(
                                      "XL",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xff8399A9),
                                        fontSize: 18,
                                        fontFamily: "Sen",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "30% off",
                                      style: TextStyle(
                                        color: Color(0xff6b63dd),
                                        fontSize: 16,
                                        fontFamily: "Sen",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          "58 ₺",
                                          style: TextStyle(
                                            color: Color(0xff8399a9),
                                            fontSize: 24,
                                            fontFamily: "Sen",
                                            decorationStyle:
                                                TextDecorationStyle.solid,
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(width: 18),
                                        Text(
                                          "55 ₺",
                                          style: TextStyle(
                                            color: Color(0xff0ca65f),
                                            fontSize: 30,
                                            fontFamily: "Sen",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Container(
                                  width: 165,
                                  height: 70,
                                  child: Center(
                                    child: Text(
                                      "Add to Bag",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontFamily: "Sen",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30)),
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
