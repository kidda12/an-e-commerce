// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:fisrst_app/pages/cart.dart';
import 'package:flutter/material.dart';
import 'package:fisrst_app/homepage.dart';
import 'package:fisrst_app/availableoutfitgrid.dart';

class GownPage extends StatefulWidget {
  const GownPage(
      {Key? key, this.gownpage_price, this.gownpage_name, this.gownpage_pics})
      : super(key: key);

  final gownpage_price;
  final gownpage_name;
  final gownpage_pics;

  @override
  State<GownPage> createState() => _GownPageState();
}

class _GownPageState extends State<GownPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // elevation: 0.1,
          title: Padding(
            padding: const EdgeInsets.all(.0),
            child: Column(
              children: [
                InkWell(
                    onTap: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    }),
                    child: Text(" AJ STYLE")),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Text(
                    "let's get styled 👗",
                  ),
                )
              ],
            ),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
          actions: <Widget>[
            IconButton(onPressed: (() {}), icon: Icon(Icons.search)),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 300,
              child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.gownpage_pics.toString()),
                ),

                // footer
                //
                footer: Container(
                  color: Colors.white54,
                  child: ListTile(
                    title: Text(
                      widget.gownpage_name.toString(),
                      style: TextStyle(
                          color: Colors.indigo,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    // subtitle: ,
                    selected: true,
                    selectedTileColor: Color.fromARGB(255, 165, 63, 183),
                    subtitle: Align(
                      alignment: Alignment.topRight,
                      child: Column(
                        children: [
                          Text(
                            "\$" + widget.gownpage_price.toString(),
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                          Text("order")
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // row
            Row(
              children: <Widget>[
                Expanded(
                    child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("size"),
                            content: Text("choose size"),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text(
                                  "close",
                                  style: TextStyle(color: Colors.cyan),
                                ),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(children: <Widget>[
                    Expanded(child: Text("size")),
                    Expanded(child: Icon(Icons.arrow_drop_down))
                  ]),
                )),
                Expanded(
                    child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("color"),
                            content: Text("select your desired color"),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text(
                                  "close",
                                  style: TextStyle(color: Colors.cyan),
                                ),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(children: <Widget>[
                    Expanded(child: Text("color")),
                    Expanded(child: Icon(Icons.arrow_drop_down))
                  ]),
                )),
                Expanded(
                    child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("quantity"),
                            content: Text("select quantity"),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text(
                                  "close",
                                  style: TextStyle(color: Colors.cyan),
                                ),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(children: <Widget>[
                    Expanded(child: Text("quantity")),
                    Expanded(child: Icon(Icons.arrow_drop_down))
                  ]),
                ))
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text("Buy now"),
                )),
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Cart()));
                    },
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Colors.red,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_outline,
                      color: Colors.red,
                    )),
              ],
            ),
            Divider(
              color: Colors.red,
              // indent: 22,
              height: 4,
              thickness: 2,
            ),
            ListTile(
              title: Text(
                " outfit details",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "this is a fancy outfit produced by AJ STYLE and they've been working on making thier outfit one of the best in the market and also they offer exemplary services like;" +
                    "                                                                               "
                        "sewing weding gowns" +
                    "                                                                                                                                   "
                        " and also abaya and suits                 ",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Container(
              color: Color.fromARGB(255, 170, 144, 180),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(12, 4, 6, 6),
                    child: Text(
                      "outfit name ;",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      widget.gownpage_name.toString(),
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.tealAccent),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color.fromARGB(255, 170, 144, 180),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(12, 4, 6, 6),
                    child: Text(
                      "Outfit Brand;",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      widget.gownpage_name.toString(),
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.tealAccent),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color.fromARGB(255, 170, 144, 180),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(12, 4, 6, 6),
                    child: Text(
                      "fabric;",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      widget.gownpage_name.toString(),
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.tealAccent),
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                "simillar outfit",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            Similaroutfits(),
          ],
        ));
    // Text("hguy"),
  }
}

class Similaroutfits extends StatefulWidget {
  const Similaroutfits({Key? key}) : super(key: key);

  @override
  State<Similaroutfits> createState() => _SimilaroutfitsState();
}

class _SimilaroutfitsState extends State<Similaroutfits> {
  var outfitlist = [
    {
      "name": "gown",
      "pics": "assets/images/gown1.jpg",
      "price": 250,
    },
    {
      "name": "abaya",
      "pics": "assets/images/abaya1.jpg",
      "price": 120,
    },
    {
      "name": "Winter fit",
      "pics": "assets/images/mencas1.jpg",
      "price": 300,
    },
    {
      "name": "jacket",
      "pics": "assets/images/mencas2.jpg",
      "price": 125,
    },
    {
      "name": "flowing gown",
      "pics": "assets/images/gown1.jpg",
      "price": 150,
    },
    {
      "name": "formal fit",
      "pics": "assets/images/gown2.jpg",
      "price": 150,
    },
    {
      "name": "Suit",
      "pics": "assets/images/suit1.jpg",
      "price": 340,
    },
    {
      "name": "Blazzer",
      "pics": "assets/images/suit2.jpg",
      "price": 300,
    },
    {
      "name": "casual outfit",
      "pics": "assets/images/suit3.jpg",
      "price": 330,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return (GridView.builder(
      physics: ScrollPhysics(),
      // dragStartBehavior: DragStartBehavior.down,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return (Single_outfit(
          outfit_name: outfitlist[index]["name"],
          outfit_picture: outfitlist[index]["pics"],
          outfit_price: outfitlist[index]["price"],
        ));
      },
      itemCount: 8,
    ));
  }
}

class Single_outfit extends StatelessWidget {
  // const Single_outfit({Key? key}) : super(key: key);
  final outfit_name;
  final outfit_price;
  final outfit_picture;

  Single_outfit({this.outfit_name, this.outfit_picture, this.outfit_price});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
      tag: outfit_name,
      child: Material(
        child: InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => GownPage(
                    gownpage_name: outfit_name,
                    gownpage_pics: outfit_picture,
                    gownpage_price: outfit_price,
                  ))),
          child: GridTile(
              footer: Container(
                height: 22,
                color: Colors.white70,
                child: Row(
                  children: <Widget>[
                    Expanded(
                        // flex: 2,
                        child: Text(
                      outfit_name,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    Expanded(
                        child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "\$" + outfit_price.toString(),
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                  ],
                ),
              ),
              child: Image.asset(
                outfit_picture,
                fit: BoxFit.cover,
              )),
        ),
      ),
    ));
  }
}
