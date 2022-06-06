import 'package:flutter_dribbble_ui/gen/assets.gen.dart';

class Artist {
  final String name;
  final AssetGenImage image;

  Artist({required this.name, required this.image});
}

List<Artist> artists = [
  Artist(name: "Reza Sadeghi", image: Assets.musicUi.images.rezaSadeghi),
  Artist(name: "Behnam Bani", image: Assets.musicUi.images.behnamBani),
  Artist(name: "Sasy", image: Assets.musicUi.images.sasy),
];
