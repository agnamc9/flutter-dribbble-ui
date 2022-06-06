import 'package:flutter/material.dart';
import 'package:flutter_dribbble_ui/gen/assets.gen.dart';

class MusicAvatar extends StatelessWidget {
  final double size;
  final AssetGenImage? cover;
  final Color? border;
  const MusicAvatar({
    Key? key,
    this.size = 50,
    this.cover,
    this.border,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        image: cover != null ? DecorationImage(image: cover!) : null,
        borderRadius: BorderRadius.circular(size * .44),
        border: border != null ? Border.all(color: border!, width: 2) : null,
      ),
    );
  }
}
