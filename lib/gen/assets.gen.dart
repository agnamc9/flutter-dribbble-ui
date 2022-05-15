/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsECommerceGen {
  const $AssetsECommerceGen();

  $AssetsECommerceImagesGen get images => const $AssetsECommerceImagesGen();
}

class $AssetsPetAdoptionGen {
  const $AssetsPetAdoptionGen();

  $AssetsPetAdoptionImagesGen get images => const $AssetsPetAdoptionImagesGen();
}

class $AssetsECommerceImagesGen {
  const $AssetsECommerceImagesGen();

  /// File path: assets/e_commerce/images/flame.png
  AssetGenImage get flame =>
      const AssetGenImage('assets/e_commerce/images/flame.png');

  /// File path: assets/e_commerce/images/intro.jpg
  AssetGenImage get intro =>
      const AssetGenImage('assets/e_commerce/images/intro.jpg');

  /// File path: assets/e_commerce/images/item1.jpg
  AssetGenImage get item1 =>
      const AssetGenImage('assets/e_commerce/images/item1.jpg');

  /// File path: assets/e_commerce/images/p1_item_1.jpg
  AssetGenImage get p1Item1 =>
      const AssetGenImage('assets/e_commerce/images/p1_item_1.jpg');

  /// File path: assets/e_commerce/images/p1_item_2.jpg
  AssetGenImage get p1Item2 =>
      const AssetGenImage('assets/e_commerce/images/p1_item_2.jpg');

  /// File path: assets/e_commerce/images/p1_item_3.jpg
  AssetGenImage get p1Item3 =>
      const AssetGenImage('assets/e_commerce/images/p1_item_3.jpg');

  /// File path: assets/e_commerce/images/p1_item_header_1.jpg
  AssetGenImage get p1ItemHeader1 =>
      const AssetGenImage('assets/e_commerce/images/p1_item_header_1.jpg');

  /// File path: assets/e_commerce/images/p1_item_header_2.jpg
  AssetGenImage get p1ItemHeader2 =>
      const AssetGenImage('assets/e_commerce/images/p1_item_header_2.jpg');

  /// File path: assets/e_commerce/images/p2_header.jpg
  AssetGenImage get p2Header =>
      const AssetGenImage('assets/e_commerce/images/p2_header.jpg');

  /// File path: assets/e_commerce/images/p2_item_header_1.jpg
  AssetGenImage get p2ItemHeader1 =>
      const AssetGenImage('assets/e_commerce/images/p2_item_header_1.jpg');

  /// File path: assets/e_commerce/images/p2_item_header_2.jpg
  AssetGenImage get p2ItemHeader2 =>
      const AssetGenImage('assets/e_commerce/images/p2_item_header_2.jpg');
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

  static const $AssetsECommerceGen eCommerce = $AssetsECommerceGen();
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
