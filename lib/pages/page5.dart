import 'package:flutter/material.dart';
class Page5 extends StatefulWidget {
  static const String id = "page5";
  const Page5({Key? key}) : super(key: key);

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Page5"),
      ),
    );
  }
}
