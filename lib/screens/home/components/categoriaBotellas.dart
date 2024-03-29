import 'package:flutter/material.dart';
import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
import 'package:shop_app/enums.dart';
import 'bodyBotellas.dart';

class Botellas extends StatelessWidget {
  static String routeName= "./botellas";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      //leading: Image.asset('assets/icons/botella.svg'),
      title: Row(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Botellas ",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }

}