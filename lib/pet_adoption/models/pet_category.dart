import 'package:flutter_dribbble_ui/gen/assets.gen.dart';

class PetCategory {
  final String name;
  final String image;
  PetCategory({
    required this.name,
    required this.image,
  });
}

final List<PetCategory> petCategories = [
  PetCategory(
    name: "Cat",
    image: Assets.petAdoption.images.catCategory.path,
  ),
  PetCategory(
    name: "Dog",
    image: Assets.petAdoption.images.dogCategory.path,
  ),
  PetCategory(
    name: "Mouse",
    image: Assets.petAdoption.images.mouseCategory.path,
  ),
];
