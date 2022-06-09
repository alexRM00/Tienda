import 'package:flutter/material.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/models/Product.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
        EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(6)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
            ...List.generate(
              demoProducts.length,
              (index) {
                //id Camisas 1,2,3,4,5,6
                for(int i=1;i<=3;i++){
                  if (demoProducts[index].id==i) {
                    return ProductCard(product: demoProducts[index]);
                  }
                }
                return SizedBox
                   .shrink(); // here by default width and height is 0
              },
              ),
              SizedBox(width: getProportionateScreenWidth(10)),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ...List.generate(
                  demoProducts.length,
                      (index) {
                    //id Camisas 1,2,3,4,5,6
                    for(int i=4;i<=6;i++){
                      if (demoProducts[index].id==i) {
                        return ProductCard(product: demoProducts[index]);
                      }
                    }
                    return SizedBox
                        .shrink(); // here by default width and height is 0
                  },
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
