import 'package:flutter/material.dart';
import 'package:shop_app/models/Cart.dart';
import '../../../size_config.dart';

//Body de la pantalla de las notificaciones

class bodyNotificaciones extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<bodyNotificaciones> {
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
