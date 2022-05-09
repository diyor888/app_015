import 'package:app_015/pages/page2.dart';
import 'package:app_015/pages/splash_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  static const String id = "page1";

  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int a = 0;
  bool k = false;
  bool l = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Hotel Rooms",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, Splash_page.id);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Page2.id);
              },
              icon: Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ),),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(1),
        children: [
          _itemslist(
              soni: k,
              nomi: "Quad room",
              narxi: "300",
              sanasi: "10",
              rasmi: "assets/images/img_3.png"),
          _itemslist(
              soni: k,
              nomi: "Double room",
              narxi: "200",
              sanasi: "2",
              rasmi: "assets/images/img_4.png"),
          _itemslist(
              soni: k,
              nomi: "Presidential suite",
              narxi: "700",
              sanasi: "5",
              rasmi: "assets/images/img_5.png"),
          _itemslist(
              soni: k,
              nomi: "Penthouse room",
              narxi: "900",
              sanasi: "4",
              rasmi: "assets/images/img_6.png"),
        ],
      ),
    );
  }

  Widget _itemslist({nomi, narxi, sanasi, rasmi,soni}) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 230,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(rasmi),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      soni = !soni;
                      // bool l = soni;
                    },);
                  },
                  icon: soni? Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  )
                      : Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Text(
                  nomi + "\n" + narxi + "\$ ",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Expanded(child: Text("")),
                Container(
                  height: 50,
                  width: 130,
                  decoration: BoxDecoration(
                      color: Colors.tealAccent[400],
                      borderRadius: BorderRadius.circular(30)),
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "order now",
                      style: TextStyle(fontSize: 19, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Placed " + sanasi + " days ago",
              style: TextStyle(color: Colors.grey[700]),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
  Widget _icon ({son}) {
    return son? Icon(
      Icons.favorite_border,
      color: Colors.white,
    )
        : Icon(
      Icons.favorite,
      color: Colors.red,
    );
  }

}
