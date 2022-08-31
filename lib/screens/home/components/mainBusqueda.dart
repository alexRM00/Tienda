import 'package:flutter/material.dart';
import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
import 'package:shop_app/enums.dart';
import 'bodyBusqueda.dart';

//Clase para implementar la busqueda de articulos
class mainBusqueda extends StatelessWidget {
  static String routeName= "./mainBusqueda";
  const mainBusqueda({Key? key}): super (key: key);
  @override
  Widget build(BuildContext context) {
    //Se implementa un Map para guardar el valor dela pantalla anterior para buscar el articulo
    Map arguments= ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(valor: arguments['valor'],),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Resultados",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }

}
