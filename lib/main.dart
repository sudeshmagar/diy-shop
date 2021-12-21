import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//custom imports
import 'package:diy_shop_nepal/components/horizontal_listview.dart';
import 'package:diy_shop_nepal/components/products.dart';
import 'package:diy_shop_nepal/pages/cart.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/c1.jpg'),
          AssetImage('assets/images/m1.jpeg'),
          AssetImage('assets/images/w3.jpeg'),
          AssetImage('assets/images/w4.jpeg'),
          AssetImage('assets/images/m2.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        backgroundColor: Colors.red,
        title: Text('DIY Shop Nepal'),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cart(),
                  ),
                );
              })
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            //header
            UserAccountsDrawerHeader(
              accountName: Text('Sudesh Magar'),
              accountEmail: Text('sudeshmagar25@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
            //body
            ListTile(
              title: Text('Home Page'),
              leading: Icon(Icons.home),
              onTap: () {},
            ),

            ListTile(
              title: Text('My Account'),
              leading: Icon(Icons.person),
              onTap: () {},
            ),

            ListTile(
              title: Text('My Orders'),
              leading: Icon(Icons.shopping_basket),
              onTap: () {},
            ),

            ListTile(
              title: Text('Categories'),
              leading: Icon(Icons.dashboard),
              onTap: () {},
            ),

            ListTile(
              title: Text('Favourites'),
              leading: Icon(Icons.favorite),
              onTap: () {},
            ),

            Divider(),

            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings, color: Colors.green),
              onTap: () {},
            ),

            ListTile(
              title: Text('About'),
              leading: Icon(
                Icons.help,
                color: Colors.blue,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          //image carousel
          imageCarousel,
          //padding widget
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Categories'),
          ),

          //Horizontal list view starts here
          HorizontalList(),

          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Recent products'),
          ),

          //grid view
          // Container(height: 350.0, child: Products()),
          Flexible(child: Products()),
        ],
      ),
    );
  }
}
