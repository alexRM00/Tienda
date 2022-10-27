import 'package:flutter/material.dart';

import '../../../size_config.dart';

//Pantalla de horario de la tienda con la imagen del reloj

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 15, top: 23, bottom: 1, right: 5),
          child: Image.asset('assets/images/clock.png',scale: 12)//height: 30, width: 30),
        ),
        SizedBox(width: getProportionateScreenWidth(5)),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(5)),
          child: const Text("L - V 11:00 - 16:00", style: TextStyle(color: Colors.black,height: 3, fontSize: 20),)
        ),
      ],
    );
  }
}