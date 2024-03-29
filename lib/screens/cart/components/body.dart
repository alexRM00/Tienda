import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/models/Cart.dart';
import 'check_out_card.dart';

import '../../../size_config.dart';
import 'cart_card.dart';

//Body de la pantalla del carrito
//Aqui se eliminan los articulos y se muestra info de cada articulo

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    void activated(){
      setState(() {
        Cart.aux= CheckoutCard.getTotal();
      });
    }
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          //Widget para eliminar articulos
          child: Dismissible(
            //key: Key(demoCarts[index].product.id.toString()),
            key: UniqueKey(),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              setState(() {
                demoCarts.removeAt(index);
              });
              Cart.sumarProductos();
              //activated();
            },
            background: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xFFFFE6E6),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Spacer(),
                  SvgPicture.asset("assets/icons/Trash.svg"),
                ],
              ),
            ),
            child: CartCard(cart: demoCarts[index]),
          ),
        ),
      ),
    );
  }
}
