import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/models/Cart.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/size_config.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';

import 'color_dots.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';
//Body de la parte de abajo de la pantalla para cada articulo (para añadir al carrito)

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Color(0xFFECEFF1),
                child: Column(
                  children: [
                    ColorDots(product: product),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(40),
                          top: getProportionateScreenWidth(15),
                        ),
                        child: DefaultButton(
                          text: "Agregar al carrito",
                          press: () {
                            //Se crea una variable de tipo clase Cart para
                            //añadir al carrito cada articulo
                            //se envia de parametros el 'producto' y el numero de prendas
                            Cart CardAux= new Cart(product: product, numOfItem: ColorDots.getPrenda());
                            demoCarts.add(CardAux);
                            showDialog<String>(
                              context: context,
                              builder: (BuildContext context)=> AlertDialog(
                                title: const Text("Se añadió a tu carrito"),
                                content: Image.asset("assets/images/comprobado.png", width: 60, height: 60),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(32.0))),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
