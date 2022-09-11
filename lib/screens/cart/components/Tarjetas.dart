import 'package:flutter/material.dart';
import 'package:shop_app/models/Cart.dart';
import 'package:shop_app/screens/cart/components/bodyTarjetas.dart';

import 'bodyTarjetas.dart';
import 'check_out_card.dart';

//Clase que lleva el Body de la pantalla del tarjetas

class Tarjetas extends StatelessWidget {
  static String routeName = "/tarjeta";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: bodyTarjetas(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Tarjetas",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}