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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                ...List.generate(
                  demoProducts.length,
                      (index) {
                        //id botellas 7,8,9
                    for(int i=7;i<=8;i++){
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
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                ...List.generate(
                  demoProducts.length,
                      (index) {
                    //id botellas 7,8,9
                    for(int i=9;i<10;i++){
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