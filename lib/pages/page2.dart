import 'package:app_015/pages/page1.dart';
import 'package:app_015/pages/page3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  static const String id = "page2";

  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  bool code1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[100],
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, Page1.id);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, Page3.id);
            },
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              color: Colors.grey[100],
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //sign up
                  Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //facebook twitter
                  Row(
                    children: [
                      Container(
                        height: 45,
                        width: 170,
                        decoration: BoxDecoration(
                          color: Color(0xff3b5988),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            "Facebook",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(""),
                      ),
                      Container(
                        height: 45,
                        width: 170,
                        decoration: BoxDecoration(
                          color: Color(0xff00acee),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            "Twitter",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //first name
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.only(left: 20, right: 10),
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(
                        color: Colors.grey.shade400,
                        width: 1,
                      ),
                    ),
                    child: TextField(
                      //obscureText: false,
                      style: TextStyle(fontSize: 15, color: Colors.black),
                      decoration: InputDecoration(
                        hintText: 'First Name',
                        hintStyle: TextStyle(color: Colors.grey[600]),
                        border: InputBorder.none,
                        // prefixIcon: Icon(
                        //   Icons.mail,
                        //   color: Colors.blue,
                        // ),
                      ),
                    ),
                  ),
                  //last name
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.only(left: 20, right: 10),
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(
                        color: Colors.grey.shade400,
                        width: 1,
                      ),
                    ),
                    child: TextField(
                      //obscureText: false,
                      style: TextStyle(fontSize: 15, color: Colors.black),
                      decoration: InputDecoration(
                        hintText: 'Last Name',
                        hintStyle: TextStyle(color: Colors.grey[600]),
                        border: InputBorder.none,
                        // prefixIcon: Icon(
                        //   Icons.mail,
                        //   color: Colors.blue,
                        // ),
                      ),
                    ),
                  ),
                  // your email
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.only(left: 20, right: 10),
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(
                        color: Colors.grey.shade400,
                        width: 1,
                      ),
                    ),
                    child: TextField(
                      //obscureText: false,
                      style: TextStyle(fontSize: 15, color: Colors.black),
                      decoration: InputDecoration(
                        hintText: 'Your Email',
                        hintStyle: TextStyle(color: Colors.grey[600]),
                        border: InputBorder.none,
                        // prefixIcon: Icon(
                        //   Icons.mail,
                        //   color: Colors.blue,
                        // ),
                      ),
                    ),
                  ),
                  //password
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.only(left: 20, right: 10),
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(
                        color: Colors.grey.shade400,
                        width: 1,
                      ),
                    ),
                    child: TextField(
                      obscureText: code1,
                      style: TextStyle(fontSize: 15, color: Colors.black),
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.grey[600]),
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(
                              () {
                                code1 = !code1;
                              },
                            );
                          },
                          icon: code1
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.tealAccent[400],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      "By getting started, you acknowledge and agree to",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Center(
                    child: Text("Terms of Use and Privacy Policy",
                        style: TextStyle(fontSize: 15)),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?  ",
                        style: TextStyle(fontSize: 15),
                      ),
                      GestureDetector(
                        child: Center(
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                color: Colors.tealAccent[400], fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
