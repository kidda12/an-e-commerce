// ignore_for_file: prefer_const_constructors

import 'package:fisrst_app/availableoutfitgrid.dart';
import 'package:fisrst_app/pages/gownpage.dart';
import 'package:flutter/material.dart';
// import 'package:carousel_pro/carousel_pro.dart';
// import 'carousel.dart';
import 'horizontallist.dart';
import 'availableoutfitgrid.dart';
// import 'package:fisrst_app/pages/gownhoriz.dart';
import 'package:fisrst_app/pages/cart.dart';
import 'homepageslider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 32,
        title: Text("ajolayo styles"),
        backgroundColor: Colors.red,
        centerTitle: true,
        actions: <Widget>[
          InkWell(
            child: IconButton(onPressed: (() {}), icon: Icon(Icons.search)),
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: (() {
              () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cart()));
            }),
          ),
        ],
      ),
      drawer: Drawer(
          child: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
// header
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(color: Colors.red),
            accountName: Text(
              "kidda",
              style: TextStyle(
                  fontSize: 24,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
            accountEmail: Text("akandeumar05@gmail.com"),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          // body

          InkWell(
            onTap: (() {}),
            child: ListTile(
              title: Text("home page"),
              leading: Icon(
                Icons.home,
                color: Colors.red,
              ),
            ),
          ),
          InkWell(
              onTap: (() {}),
              child: ListTile(
                title: Text("my Account"),
                leading: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
                onTap: (() {
                  () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                }),
              )),

          InkWell(
              onTap: (() {}),
              child: ListTile(
                title: Text("my orders"),
                leading: Icon(
                  Icons.shopify_sharp,
                  color: Colors.red,
                ),
              )),

          InkWell(
              onTap: (() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              }),
              child: ListTile(
                title: Text("my cart"),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.green,
                ),
              )),
          InkWell(
              onTap: (() {}),
              child: ListTile(
                title: Text("favourites"),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              )),

          Divider(),

          InkWell(
              onTap: (() {}),
              child: ListTile(
                title: Text("settings"),
                leading: Icon(
                  Icons.settings,
                  // color: Colors.red,
                ),
              )),
          InkWell(
              onTap: (() {}),
              child: ListTile(
                title: Text("about"),
                leading: Icon(
                  Icons.help,
                  color: Colors.blue,
                ),
              )),
        ],
      )),
      body: ListView(
        children: <Widget>[
          // imageCaroudel,
          Container(height: 280, child: GownHorizontal()),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              "categories",
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          //  horizontal list view begin
          HorizontalList(),
          Padding(
            padding: EdgeInsets.all(8),
            child: Center(
              child: Text(
                "available outfits",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
          ),
          // gridview
          Container(height: 1000, child: Availableoutfit())
        ],
      ),
    );
  }
}
