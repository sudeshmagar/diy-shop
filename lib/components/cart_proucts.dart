import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var productsOnTheCart = [
    {
      "name": "Blazer",
      "picture": "assets/images/products/blazer1.jpeg",
      "price": 90,
      "size": "M",
      "color": "Black",
      "quantity": 1,
    },
    {
      "name": "Red dress",
      "picture": "assets/images/products/dress1.jpeg",
      "price": 70,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productsOnTheCart.length,
      itemBuilder: (context, index) {
        return SingleCartProduct(
          cartProdName: productsOnTheCart[index]["name"],
          cartProdColor: productsOnTheCart[index]["color"],
          cartProdQty: productsOnTheCart[index]["quantity"],
          cartProdSize: productsOnTheCart[index]["size"],
          cartProdPrice: productsOnTheCart[index]["price"],
          cartProdPicture: productsOnTheCart[index]["picture"],
        );
      },
    );
  }
}

class SingleCartProduct extends StatelessWidget {
  final cartProdName;
  final cartProdPicture;
  final cartProdPrice;
  final cartProdSize;
  final cartProdColor;
  final cartProdQty;

  SingleCartProduct({
    this.cartProdName,
    this.cartProdColor,
    this.cartProdPrice,
    this.cartProdPicture,
    this.cartProdQty,
    this.cartProdSize,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //contentPadding: EdgeInsets.all(10.0),

        //========leading section=======
        leading: Image.asset(
          cartProdPicture,
          width: 80.0,
          height: 80.0,
        ),

        //=======title section========

        title: Text(cartProdName),

        //========subtitle section======

        subtitle: Column(
          children: <Widget>[
            //Row inside column
            Row(
              children: <Widget>[
                //=====this section is for size of the product ========
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text("Size:"),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(cartProdSize),
                ),

                //============== this section is for color of the product ===
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Text("Color:"),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(cartProdColor),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\$$cartProdPrice",
                style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ),
          ],
        ),
        trailing: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(icon: Icon(Icons.add), onPressed: () {}),
            Text("$cartProdQty"),
            IconButton(icon: Icon(Icons.remove), onPressed: () {})
          ],
        ),
      ),
    );
  }
}
