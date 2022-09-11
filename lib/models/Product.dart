import 'package:flutter/material.dart';

//En la variable existencia pasar argumentos de la BD
class Product {
  final int id,existencia;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.existencia,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

//id Camisas 1,2,3,4,5,6
//id botellas 7,8,9
// id morral 10
//id cuaderno 11
//id gorra 12
//id deportes 13,14,15,16

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/playera_soycucei.png",
      "assets/images/playera_soycucei_bck.png",
    ],
    colors: [
      Color(0xDD000000),
    ],
    title: "Playera #SomosCUCEI",
    price: 190,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: false,
    existencia: 2,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/playera_morada_1.png",
      "assets/images/playera_morada_2.png",
    ],
    colors: [Color(0xFF7B1FA2)],
    title: "Playera púrpura CUCEI",
    price: 190,
    description: description8,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
    existencia: 2,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/playera_blanca_1.png",
      "assets/images/playera_blanca_2.png",
    ],
    colors: [Color(0xFFFFFFFF)],
    title: "Playera blanca CUCEI",
    price: 190,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
    existencia: 2,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/playera_cucei.png",
      "assets/images/playera_cucei_bck.png",
    ],
    colors: [Color(0xFF01579B)],
    title: "Playera CUCEI quimica",
    price: 190,
    description: description9,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
    existencia: 2,
  ),
  Product(
    id: 5,
    images: [
      "assets/images/playera_gris_1.png",
      "assets/images/playera_gris_2.png",
    ],
    colors: [Color(0xFFB0BEC5)],
    title: "Playera química gris CUCEI",
    price: 190,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
    existencia: 2,
  ),
  Product(
    id: 6,
    images: [
      "assets/images/playera_roja_1.png",
      "assets/images/playera_roja_2.png",
    ],
    colors: [Color(0xFFD50000)],
    title: "Playera roja CUCEI",
    price: 190,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
    existencia: 2,
  ),
  Product(
    id: 7,
    images: [
      "assets/images/termo.png",
    ],
    colors: [Color(0xFFB0BEC5)],
    title: "Termo CUCEI",
    price: 250,
    description: description5,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
    existencia: 2,
  ),
  Product(
    id: 8,
    images: [
      "assets/images/cilindro_p_azul.png",
      "assets/images/cilindro_p_verde.png",
    ],
    colors: [
      Color(0xFF01579B),
      Color(0xFF7CB342),
    ],
    title: "Cilindro plástico",
    price: 70,
    description: description7,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
    existencia: 2,
  ),
  Product(
    id: 9,
    images: [
      "assets/images/cilindro_vidrio.png",
    ],
    colors: [Color(0xFFF57C00)],
    title: "Cilindro vidrio",
    price: 120,
    description: description7,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
    existencia: 2,
  ),
  Product(
    id: 10,
    images: [
      "assets/images/morral_azul.png",
      "assets/images/morral_naranja.png",
      "assets/images/morral_blanco.png",
    ],
    colors: [
      Color(0xFF1976D2),
      Color(0xFFF57C00),
      Colors.white,
    ],
    title: "Morral CUCEI",
    price: 90,
    description: description2,
    rating: 4.1,
    isPopular: true,
    existencia: 2,
  ),
  Product(
    id: 11,
    images: [
      "assets/images/cuaderno_1.png",
      "assets/images/cuaderno_2.png",
      "assets/images/cuaderno2.png",
    ],
    colors: [Color(0xFF01579B)],
    title: "Cuaderno plastificado",
    price: 149,
    description: description4,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
    existencia: 2,
  ),
  Product(
    id: 12,
    images: [
      "assets/images/gorra_naranja.png",
      "assets/images/gorra_roja.png",
    ],
    colors: [
      Color(0xFFF57C00),
      Color(0xFFD50000)
    ],
    title: "Gorra CUCEI",
    price: 300,
    description: description6,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
    existencia: 2,
  ),
  Product(
    id: 13,
    images: [
      "assets/images/playera_depor_3.png",
      "assets/images/playera_depor_3_bck.png",
    ],
    colors: [
      Color(0xFF01579B),
    ],
    title: "Playera deportiva",
    price: 450,
    description: description3,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
    existencia: 2,
  ),
  Product(
    id: 14,
    images: [
      "assets/images/playera_depor_2.png",
      "assets/images/playera_depor_2_bck.png",
    ],
    colors: [Color(0xFF01579B)],
    title: "Playera deportiva s/manga",
    price: 450,
    description: description10,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
    existencia: 2,
  ),
  Product(
    id: 15,
    images: [
      "assets/images/playera_depor_4.png",
      "assets/images/playera_depor_4_bck.png",
    ],
    colors: [Color(0xFFB0BEC5)],
    title: "Playera deportiva 2",
    price: 450,
    description: description3,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
    existencia: 2,
  ),
  Product(
    id: 16,
    images: [
      "assets/images/playera_depor_1.png",
    ],
    colors: [Colors.white,],
    title: "Playera deportiva CUCEI",
    price: 190,
    description: description3,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
    existencia: 2,
  ),
];

const String description =
    "Playera oficial #SomosCUCEI.";
const String description2=
    "Morral oficial #SomosCUCEI.";
const String description3 =
    "Playera deportiva CUCEI ideal para entrenar.";
const String description4 =
    "El cuaderno CUCEI cuenta con espacio para notas y stickers.";
const String description5 =
    "El termo CUCEI ideal para un café en la mañana.";
const String description6 =
    "La gorra CUCEI para estar siempre a la moda.";
const String description7 =
    "El cilindro CUCEI para mantenerse siempre hidratado.";
const String description8 =
    "Playera púrpura conmemorativa de la lucha de las mujeres";
const String description9 =
    "La playera #SomosCUCEI estilo tabla periódica.";
const String description10 =
    "Playera deportiva CUCEI sin mangas ideal para entrenar";



