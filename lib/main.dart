import 'package:flutter/material.dart';
import 'package:flutter_dribbble_ui/food_delivery/food_delivery.dart';

import 'gen/assets.gen.dart';

List<AssetGenImage> mealImages = [
  Assets.foodDelivery.images.pizza,
  Assets.foodDelivery.images.burger,
  Assets.foodDelivery.images.sandwich,
  Assets.foodDelivery.images.brocheta,
];

List<String> mealNames = [
  "Pizza veloper",
  "Burger miau",
];

List<String> categories = [
  "Pizzas",
  "Burger",
  "Sandwich",
  "Desayuno",
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
