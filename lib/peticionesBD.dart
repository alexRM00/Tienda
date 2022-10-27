import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

///Archivo para solicitar las peticiones de Base de datos mediante funciones
///De cada funcion, el valor retornado asignar a un objeto de la clase Peticiones
///Mandar a llamar las funciones correspondientes en el momento que se indique, siendo:
/// -Al momento de ingresar a la app
/// -Al registrarse a la app
/// -Al inicio de la app para los articulos y sus disponibilidades
/// -Al hacer click en "Contraseña olvidada"

///Ejemplo de peticion a BD
/*Future<Album> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://cuceirace.000webhostapp.com/login2.php?Correo=alejandro@gmail.com&Password=\$2y\$10\$.491ymo/.uQPVsmdnS/R9u.KTaJtITlptKOYgngsBdlQKPU7auCNq'));
  //https://cuceirace.000webhostapp.com/login2.php
  //'https://jsonplaceholder.typicode.com/albums/1'
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    //En esta variable se almacena la respuesta de la BD y posteriormente se almacena en una variable, como en React
    print(response.body);
    return Album.fromJson(jsonDecode(response.body));
//    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}*/

class Peticiones{
  /*NombreUser;
  CorreoUser;
  TelefonoUser;
  PasswordUser;

  DisponibilidadArticulo;
  N_articulo;*/

  //Future<String> getLogin() async{
   // String url1= 'https://cuceirace.000webhostapp.com/login2.php?Correo='+ +'&Password='+ ;
//    var data= await http.get(url1);
//    print(data);
//  }

}