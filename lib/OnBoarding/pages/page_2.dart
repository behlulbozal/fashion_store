import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/onboarding/page2.png'),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: Text(
              'The Best \nFashion',
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
