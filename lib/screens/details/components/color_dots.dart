import 'package:flutter/material.dart';
import 'package:shop_app/components/rounded_icon_btn.dart';
import 'package:shop_app/models/Product.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ColorDots extends StatefulWidget {
  const ColorDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;
  static int getPrenda(){
    return _ColorDotsState.numeroPrenda;
  }
  @override
  State<ColorDots> createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {
  //Variable para seleccionar el numero de prendas
  static int numeroPrenda= 0;
  @override
  Widget build(BuildContext context) {
    int selectedColor = 0;
    //funcion para aumentar la cantidad de la variable numeroPrenda
    addPrenda(){
      setState(() {
         numeroPrenda++;
      });
    }
    //funcion para quitar cantidad de la variable numeroPrenda
    lessPrenda(){
      setState(() {
        if(numeroPrenda!=0)
          numeroPrenda--;
      });
    }
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
            widget.product.colors.length,
            (index) => ColorDot(
              color: widget.product.colors[index],
            ),
          ),
          Spacer(),
          RoundedIconBtn(
            icon: Icons.remove,
            press: lessPrenda,
          ),
          SizedBox(width: getProportionateScreenWidth(20)),
          Padding(
            padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(2)),
            child: Text('$numeroPrenda',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          SizedBox(width: getProportionateScreenWidth(20)),
          RoundedIconBtn(
            icon: Icons.add,
            showShadow: true,
            press: addPrenda,
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = true,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border:
            Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
        shape: BoxShape.circle,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
