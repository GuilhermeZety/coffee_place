// ignore_for_file: unused_field

import 'dart:typed_data';

import 'package:coffee_place/app/core/constants/app_theme.dart';
import 'package:coffee_place/app/core/utils/utils.dart';
import 'package:flutter/material.dart';

class AppAssets {
  static AppImages images = AppImages();
  static final AppSvgs svgs = AppSvgs();
  static final AppExternalAudio externalAudio = AppExternalAudio();

  static AppBytes bytes = AppBytes();
}

class AppBytes {
  Future init() async {
    var bytes = await (
      Utils.getAssetsBytes('assets/texture_dark.png'),
      Utils.getAssetsBytes('assets/texture_light.png'),
    ).wait;

    darkTexture = bytes.$1;
    lightTexture = bytes.$2;
  }

  Uint8List? darkTexture;
  Uint8List? lightTexture;

  Uint8List get texture => AppTheme().themeMode.value == ThemeMode.dark ? darkTexture! : lightTexture!;
}

class AppExternalAudio {
  final String rainInsideCar = 'https://cdn.pixabay.com/download/audio/2022/06/19/audio_04c9de5c9f.mp3?filename=rain-inside-a-car-113602.mp3';
  final String rainStrong = 'https://cdn.pixabay.com/download/audio/2022/05/02/audio_d3dae162f6.mp3?filename=rain-110508.mp3';
  final String fireplace = 'https://cdn.pixabay.com/download/audio/2023/11/25/audio_41a3f1192f.mp3?filename=fireplace-loop-original-noise-178209.mp3';
  // final String waterOceanWaves = 'https://cdn.pixabay.com/download/audio/2022/03/13/audio_49d14b7872.mp3?filename=water-ocean-waves-01-58360.mp3';
  final String coffeeShop = 'https://cdn.pixabay.com/download/audio/2022/03/14/audio_13264b7f5c.mp3?filename=coffee-shop-sounds-2-60194.mp3';
}

class AppImages {
  String get texture => AppTheme().themeMode.value == ThemeMode.dark ? 'assets/texture_dark.png' : 'assets/texture_light.png';
}

class AppSvgs {
  static const String _path = 'assets/svgs';
}
