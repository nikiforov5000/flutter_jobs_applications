import 'package:flutter/material.dart';
import 'dart:math';

class MyColors {

  static Color randomLightColor() {
    final Random random = Random();

    int brightness = 50;
    int saturation = 20;

    List<int> components = [
      random.nextInt(brightness) + 255 - brightness,
      random.nextInt(brightness) + 255 - brightness,
      random.nextInt(brightness) + 255 - brightness,
    ];

    int lessColorFor = random.nextInt(3);
    components[lessColorFor] -= saturation;

    final color = Color.fromRGBO(
      components[0],
      components[1],
      components[2],
      1
    );

    return color;
  }
}