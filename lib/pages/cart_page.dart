// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Cart_prod extends StatefulWidget {
  const Cart_prod({Key? key}) : super(key: key);

  @override
  State<Cart_prod> createState() => _Cart_prodState();
}

class _Cart_prodState extends State<Cart_prod> {
  var Cart_products = [
    {
      "name": "gown",
      "pics": "assets/images/gown1.jpg",
      "price": 250,
      "size": "l",
      "Color": "Red",
      "Quantity": "6",
    },
    {
      "name": "abaya",
      "pics": "assets/images/abaya1.jpg",
      "price": 120,
      "size": "M",
      "Color": "Red",
      "Quantity": "3",
    },
    {
      "name": "Winter fit",
      "pics": "assets/images/mencas1.jpg",
      "price": 300,
      "size": "xl",
      "Color": "Grey",
      "Quantity": "1",
    },
    {
      "name": "jacket",
      "pics": "assets/images/mencas2.jpg",
      "price": 125,
      "size": "s",
      "Color": "Green",
      "Quantity": "4",
    },
    {
      "name": "flowing gown",
      "pics": "assets/images/gown1.jpg",
      "price": 150,
      "size": "M",
      "Color": "Blue",
      "Quantity": "2",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Cart_prod_edit(
          cart_outfit_name: Cart_products[index]["name"],
          cart_outfit_color: Cart_products[index]["Color"],
          cart_outfit_picture: Cart_products[index]["pics"],
          cart_outfit_price: Cart_products[index]["price"],
          cart_outfit_quantity: Cart_products[index]["quantity"],
          cart_outfit_size: Cart_products[index]["size"],
        );
      },
      itemCount: Cart_products.length,
    );
  }
}

class Cart_prod_edit extends StatelessWidget {
  final cart_outfit_name;
  final cart_outfit_price;
  final cart_outfit_picture;
  final cart_outfit_size;
  final cart_outfit_color;
  final cart_outfit_quantity;

  Cart_prod_edit(
      {this.cart_outfit_color,
      this.cart_outfit_name,
      this.cart_outfit_picture,
      this.cart_outfit_price,
      this.cart_outfit_quantity,
      this.cart_outfit_size});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Container(
          width: 80,
          height: 390,
          child: Image.asset(
            cart_outfit_picture,
            // width: double.infinity,
            height: 500,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          cart_outfit_name.toString(),
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          children: <Widget>[
            //  row
            Row(
              children: <Widget>[
                // size of outfit
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "size :",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(2, 2, 12, 2),
                  child: Text(
                    cart_outfit_size.toString(),
                    style: TextStyle(color: Colors.red, fontSize: 14),
                  ),
                ),
// color of outfit
                Padding(
                    padding: const EdgeInsets.only(left: 1),
                    child: Column(children: [
                      Text(
                        "color",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: Text(
                              "\$" + cart_outfit_color.toString(),
                              style: TextStyle(color: Colors.red),
                            ),
                          ))
                    ])),
                // const Padding(
                //   padding: EdgeInsets.all(8.0),
                //   child: Text(
                //     "color :",
                //     style: TextStyle(
                //         fontSize: 18,
                //         fontWeight: FontWeight.w400,
                //         color: Colors.black),
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.all(8),
                //   child: Text(
                //     cart_outfit_color.toString(),
                //     style: TextStyle(color: Colors.red),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Column(
                    children: [
                      Text(
                        "price",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: Text(
                              "\$" + cart_outfit_price.toString(),
                              style: TextStyle(color: Colors.cyan),
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),

            //  outfit price
          ],
        ),
        trailing: Column(
          children: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_drop_up)),
            Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_drop_down)),
            ),
          ],
        ),
      ),
    );
  }
}
