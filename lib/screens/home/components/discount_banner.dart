import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../size_config.dart';

//Este archivo genera el banner de imagenes que cambian en la pantalla principal
//No es de descuentos no se confunda por el nombre

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Container(
          height: 150.0,
          width: double.infinity,
          //El Widget CarouselSlider genera el banner
          child: CarouselSlider(items: [
            Container(
              decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              boxShadow: [BoxShadow(color: Colors.black38,
              offset: Offset(2.0,2.0),
              blurRadius:3.0,
              spreadRadius: 2.0,
              ),],
              image: DecorationImage(image: AssetImage("assets/images/20220511_142306.jpeg"),
              fit: BoxFit.cover,
              )),
            ),
            Container(
            decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            boxShadow: [BoxShadow(color: Colors.black38,
            offset: Offset(2.0,2.0),
            blurRadius:3.0,
            spreadRadius: 2.0,
            ),],
            image: DecorationImage(image: AssetImage("assets/images/Banner_Camisas.png"),
            fit: BoxFit.cover,
            )),
            ),
            Container(
            decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            boxShadow: [BoxShadow(color: Colors.black38,
            offset: Offset(2.0,2.0),
            blurRadius:3.0,
            spreadRadius: 2.0,
            ),],
            image: DecorationImage(image: AssetImage("assets/images/20220914_144547_001.jpg"),
            fit: BoxFit.cover,
            )),
            ),
          ], options: CarouselOptions(
              height: 190.0,
              autoPlay: true,
              autoPlayCurve: Curves.easeInOut,
              enlargeCenterPage: true,
              autoPlayInterval: Duration(seconds: 3),
              scrollDirection: Axis.horizontal,
              ),
          ),
        ),
      );
    }
}
