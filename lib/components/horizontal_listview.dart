import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocation: 'assets/images/cats/tshirt.png',
            imageCaption: 'T Shirt',
          ),
          Category(
            imageLocation: 'assets/images/cats/dress.png',
            imageCaption: 'Dress',
          ),
          Category(
            imageLocation: 'assets/images/cats/formal.png',
            imageCaption: 'Formal',
          ),
          Category(
            imageLocation: 'assets/images/cats/informal.png',
            imageCaption: 'Informal',
          ),
          Category(
            imageLocation: 'assets/images/cats/jeans.png',
            imageCaption: 'Pant',
          ),
          Category(
            imageLocation: 'assets/images/cats/shoe.png',
            imageCaption: 'Shoe',
          ),
          Category(
            imageLocation: 'assets/images/cats/accessories.png',
            imageCaption: 'Accessories',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  Category({this.imageCaption, this.imageLocation});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 80.0,
          child: ListTile(
            title: Image.asset(
              imageLocation,
              width: 60.0,
              height: 40.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(imageCaption),
            ),
          ),
        ),
      ),
    );
  }
}
