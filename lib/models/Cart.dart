import 'package:flutter/material.dart';

import 'Product.dart';

//Clase de los productos almacenado en el Carrito
//Se almacenan en una lista para desplegarlos

class Cart {
  final Product product;
  final int numOfItem;
  static double aux=0;
  static sumarProductos(){
    aux=0;
    for (int i=0; i<demoCarts.length;i++){
      aux += demoCarts[i].product.price;
    }
    print(aux);
  }
  Cart({required this.product, required this.numOfItem});
}

// Demo data for our cart

List<Cart> demoCarts = [
  
];
