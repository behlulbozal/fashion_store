import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/onboarding/page1.png'),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: Text(
              'Let your \nStyle Speak',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 20, 60, 80),
            child: Text(
              'Discover the latest trends in women fashion and explore your personality',
              style: TextStyle(fontSize: 16, color: Color(0xff8399a9)),
            ),
          ),
        ],
      ),
    );
  }
}
