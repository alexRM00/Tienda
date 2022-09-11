import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/models/Cart.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/cart/components/Tarjetas.dart';
import 'cart_card.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

//Parte de abajo de la pantalla del carrito

class CheckoutCard extends StatefulWidget {
  @override
  State<CheckoutCard> createState() => _CheckoutCardState();
}

class _CheckoutCardState extends State<CheckoutCard> {
  static double cantidadTotal=0;
  @override
  Widget build(BuildContext context) {
    setState((){
      cantidadTotal= Cart.aux;
    });
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(15),
        horizontal: getProportionateScreenWidth(30),
      ),
      // height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: getProportionateScreenWidth(40),
                  width: getProportionateScreenWidth(40),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: GestureDetector(
                    child: SvgPicture.asset("assets/icons/receipt.svg"),
                    onTap: (){
                      Navigator.pushNamed(context, Tarjetas.routeName);
                    },
                  ),
                ),
                SizedBox(width: 10),
                //Spacer(),
                Text("Seleccionar tarjeta"),
                const SizedBox(width: 10),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Total:\n",
                    children: [
                      ///Implementar forma de sumar y restar los precios de cada articulo añadido o quitado
                      TextSpan(
                        text: "\$"+ cantidadTotal.toString(),
                        style: TextStyle(fontSize: 16, color: Colors.red, fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(190),
                  child: DefaultButton(
                    text: "Check Out",
                    press: () {Cart.sumarProductos();},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
