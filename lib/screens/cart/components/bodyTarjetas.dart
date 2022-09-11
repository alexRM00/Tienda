import 'package:flutter/material.dart';
import 'package:shop_app/models/Cart.dart';
import '../../../size_config.dart';
import 'cart_card.dart';

//Body de la pantalla de las tarjetas

class bodyTarjetas extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<bodyTarjetas> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 10),

        ),
      ),
    );
  }
}
