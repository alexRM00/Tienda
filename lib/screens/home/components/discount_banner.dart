import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      // height: 90,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Container(
          height: 150.0,
          width: double.infinity,
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
            image: DecorationImage(image: AssetImage("assets/images/playera_soycucei.png"),
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
            image: DecorationImage(image: AssetImage("assets/images/ps4_console_blue_1.png"),
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
