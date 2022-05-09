import 'package:app_015/pages/page2.dart';
import 'package:app_015/pages/page4.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
class Page3 extends StatefulWidget {
  static const String id = "page3";
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[100],
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, Page2.id);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, Page4.id);
            },
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.black,
            ),
          ),
        ],
      ),

          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.blueAccent,
            items: <Widget>[
              Icon(Icons.add, size: 30),
              Icon(Icons.list, size: 30),
              Icon(Icons.compare_arrows, size: 30),
            ],
            onTap: (index) {
              //Handle button tap
            },
          ),
          body: PageView(
            scrollDirection: Axis.horizontal,

          ),

    );
  }
}

