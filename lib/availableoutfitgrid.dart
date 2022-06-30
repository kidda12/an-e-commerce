// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_typing_uninitialized_variables

// import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fisrst_app/pages/gownpage.dart';

class Availableoutfit extends StatefulWidget {
  @override
  State<Availableoutfit> createState() => _AvailableoutfitState();
}

class _AvailableoutfitState extends State<Availableoutfit> {
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
      dragStartBehavior: DragStartBehavior.down,
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
