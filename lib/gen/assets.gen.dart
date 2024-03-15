/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/cloudy.png
  AssetGenImage get cloudy => const AssetGenImage('assets/images/cloudy.png');

  /// File path: assets/images/drop.png
  AssetGenImage get drop => const AssetGenImage('assets/images/drop.png');

  /// File path: assets/images/freezing.png
  AssetGenImage get freezing =>
      const AssetGenImage('assets/images/freezing.png');

  /// File path: assets/images/rain.png
  AssetGenImage get rain => const AssetGenImage('assets/images/rain.png');

  /// File path: assets/images/snowy.png
  AssetGenImage get snowy => const AssetGenImage('assets/images/snowy.png');

  /// File path: assets/images/storm.png
  AssetGenImage get storm => const AssetGenImage('assets/images/storm.png');

  /// File path: assets/images/weather_icon.jpg
  AssetGenImage get weatherIcon =>
      const AssetGenImage('assets/images/weather_icon.jpg');

  /// File path: assets/images/wind.png
  AssetGenImage get wind => const AssetGenImage('assets/images/wind.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [cloudy, drop, freezing, rain, snowy, storm, weatherIcon, wind];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
