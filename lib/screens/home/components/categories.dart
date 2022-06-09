import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:shop_app/screens/home/components/categoriaBotellas.dart';
import 'package:shop_app/screens/home/components/categoriaCamisas.dart';
import 'package:shop_app/screens/home/components/categoriaDeportes.dart';
import 'package:shop_app/screens/home/components/categoriaMorral.dart';
import '../../../size_config.dart';

class Categories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    void toCategory(categoria){
      switch(categoria){
        case "1" : Navigator.pushNamed(context, Botellas.routeName);
        break;
        case "2" : Navigator.pushNamed(context, Morral.routeName);
        break;
        case "3" : Navigator.pushNamed(context, Camisas.routeName);
        break;
        case "4" : Navigator.pushNamed(context, Deportes.routeName);
        break;
      }
    }
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/botella.svg", "text": "Botellas","id":"1"},
      {"icon": "assets/icons/backpack.svg", "text": "Morrales","id":"2"},
      {"icon": "assets/icons/camisa.svg", "text": "Camisas","id":"3"},
      {"icon": "assets/icons/deportes.svg", "text": "Deporte","id":"4"},
    ];

    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            icon: categories[index]["icon"],
            text: categories[index]["text"],
            id: categories[index]["id"],
            press: () => {toCategory(categories[index]["id"])},
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
    required this.id,
  }) : super(key: key);

  final String? icon, text,id;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(15)),
              height: getProportionateScreenWidth(55),
              width: getProportionateScreenWidth(55),
              decoration: BoxDecoration(
                color: Color(0xFFFFECDF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(icon!),
            ),
            SizedBox(height: 5),
            AutoSizeText(text!, textAlign: TextAlign.start,style: TextStyle(fontSize: 25),maxLines: 1,overflow: TextOverflow.ellipsis,)
          ],
        ),
      ),
    );
  }
}
