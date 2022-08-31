import 'package:flutter/material.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/models/Product.dart';
import '../../../size_config.dart';

//Metodo para buscar articulos (es parecido a la visualizacion en las etiquetas de categorias)

class Body extends StatelessWidget {
  final String valor;
  const Body({Key? key, required this.valor}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
        EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(6)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ...List.generate(
                  demoProducts.length,
                      (index) {
                    // Se acomodan los articulos que sean par de acuerdo al indice 'i' del arreglo demoProducts lleno de articulos
                    for(int i=0; i<16; i+=2){
                      if(index == i){
                        if(demoProducts[index].title.contains(valor)){
                          return ProductCard(product: demoProducts[index]);
                        }
                      }
                    }
                    return SizedBox
                        .shrink(); // here by default width and height is 0
                  },
                  growable: false,
                ),
                SizedBox(width: getProportionateScreenWidth(6)),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ...List.generate(
                  demoProducts.length,
                      (index) {
                    // Se acomodan los articulos que sean impar de acuerdo al indice 'i' del arreglo demoProducts lleno de articulos
                    for(int i=1; i<=15; i+=2){
                      if(index == i){
                        if(demoProducts[index].title.contains(valor)){
                          return ProductCard(product: demoProducts[index]);
                        }
                      }
                    }
                    return SizedBox
                       .shrink(); // here by default width and height is 0
                  },
                  growable: true,
                ),
                SizedBox(width: getProportionateScreenWidth(6)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}