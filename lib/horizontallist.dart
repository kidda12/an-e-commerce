// ignore_for_file: dead_code

import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: ListView(
        controller: ScrollController(),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Padding(padding: EdgeInsets.all(1)),
          Category(
            image: "assets/images/clotheicon2.jpg",
            image_caption: "casual Tees",
          ),
          Category(
            image: "assets/images/pantsicon.jpg",
            image_caption: "Pant",
          ),
          Category(
            image: "assets/images/suiticon.jpg",
            image_caption: "Suit",
          ),
          Category(
            image: "assets/images/topicon.jpg",
            image_caption: "Top",
          ),
          Category(
            image: "assets/images/abayaicon.jpg",
            image_caption: "Abaya",
          ),
          Category(
            image: "assets/images/hoodicon2.jpg",
            image_caption: "hood",
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);
  final String image;
  // ignore: non_constant_identifier_names
  final String image_caption;
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  Category({
    required this.image,
    required this.image_caption,
  });
  @override
  Widget build(BuildContext context) {
   
    return Padding(
      padding: EdgeInsets.all(12),
      child: InkWell(
        onTap: (() {}), 
        child: SizedBox(
          width: 100,
          child: ListTile(
            title: Image.asset(
              image,
              height: 80,
              scale: 1,
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                image_caption,
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
