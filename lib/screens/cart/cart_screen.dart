import 'package:flutter/material.dart';
import 'package:shop_app/models/Cart.dart';

import 'components/body.dart';
import 'components/check_out_card.dart';

//Clase que lleva el Body de la pantalla del carrito

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Tu carrito",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoCarts.length} artículos",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
