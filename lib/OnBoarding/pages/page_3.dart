import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/onboarding/page3.png'),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: Text(
              'Diffrent \nStyle',
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
