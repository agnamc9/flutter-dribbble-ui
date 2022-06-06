import 'package:flutter_dribbble_ui/gen/assets.gen.dart';

class Song {
  final String title;
  final String artist;
  final AssetGenImage cover;

  Song({
    required this.title,
    required this.artist,
    required this.cover,
  });
}
