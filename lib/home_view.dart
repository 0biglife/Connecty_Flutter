import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("HomeView"),
          centerTitle: true,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print("hamberger button tapped");
            },
          ),
          actions: <Widget>[
            IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print("shoppingCart button tapped");
            },
          ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("search button tapped");
              },
            ),
          ],
        ),
    );
  }
}
