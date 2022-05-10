/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsPetAdoptionGen {
  const $AssetsPetAdoptionGen();

  $AssetsPetAdoptionImagesGen get images => const $AssetsPetAdoptionImagesGen();
}

class $AssetsPetAdoptionImagesGen {
  const $AssetsPetAdoptionImagesGen();

  /// File path: assets/pet_adoption/images/cat1.png
  AssetGenImage get cat1 =>
      const AssetGenImage('assets/pet_adoption/images/cat1.png');

  /// File path: assets/pet_adoption/images/cat2.png
  AssetGenImage get cat2 =>
      const AssetGenImage('assets/pet_adoption/images/cat2.png');

  /// File path: assets/pet_adoption/images/cat_category.jpg
  AssetGenImage get catCategory =>
      const AssetGenImage('assets/pet_adoption/images/cat_category.jpg');

  /// File path: assets/pet_adoption/images/dog_category.webp
  AssetGenImage get dogCategory =>
      const AssetGenImage('assets/pet_adoption/images/dog_category.webp');

  /// File path: assets/pet_adoption/images/mouse_category.jpg
  AssetGenImage get mouseCategory =>
      const AssetGenImage('assets/pet_adoption/images/mouse_category.jpg');
}

class Assets {
  Assets._();

  static const $AssetsPetAdoptionGen petAdoption = $AssetsPetAdoptionGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}
