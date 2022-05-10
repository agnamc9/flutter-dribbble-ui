import 'package:flutter/material.dart';
import 'package:flutter_dribbble_ui/gen/assets.gen.dart';

class Pet {
  final String name;
  final String distance;
  final IconData gender;
  final Color color;
  final String image;

  Pet({
    required this.name,
    required this.distance,
    required this.gender,
    required this.color,
    required this.image,
  });
}

final List<Pet> pets = [
  Pet(
    name: "American Shorthair",
    distance: "2 Km",
    gender: Icons.female,
    color: Colors.yellow.shade600,
    image: Assets.petAdoption.images.cat1.path,
  ),
  Pet(
    name: "Pomeranian",
    distance: "5 Km",
    gender: Icons.male,
    color: Colors.pink.shade200,
    image: Assets.petAdoption.images.cat2.path,
  )
];
