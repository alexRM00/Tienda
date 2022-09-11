import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/components/bodyNotificaciones.dart';

import 'bodyNotificaciones.dart';

//Clase que lleva el Body de la pantalla del notificaciones

class notificaciones extends StatelessWidget {
  static String routeName = "/notificaciones";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: bodyNotificaciones(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Notificaciones",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}