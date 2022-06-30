// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'cart_page.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 32,
        title: Text("Cart"),
        backgroundColor: Colors.red,
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: (() {}), icon: Icon(Icons.search)),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(children: <Widget>[
          const Expanded(
              flex: 2,
              child: ListTile(
                title: Text("total amount:"),
                subtitle: Text("\$200"),
              )),
          Expanded(
              child: MaterialButton(
            onPressed: () {},
            child: Text(
              "check out",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.red,
          )),
        ]),
      ),
      body: Cart_prod(),
    );
  }
}
