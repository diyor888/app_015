import 'package:flutter/material.dart';
class Page6 extends StatefulWidget {
  static const String id = "page6";
  const Page6({Key? key}) : super(key: key);

  @override
  State<Page6> createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Page6"),
      ),
    );
  }
}
