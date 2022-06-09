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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                ...List.generate(
                  demoProducts.length,
                      (index) {
                    // id morral 10
                    if (demoProducts[index].id==10) {
                        return ProductCard(product: demoProducts[index]);
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