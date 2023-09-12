import 'package:flutter/material.dart';

class MenItems {
  List<String> get images => List.from(_image);
  List<String> get names => List.from(_names);
  List<String> get prices => List.from(_prices);
  List<Color> get colors => List.from(_colors);
  List<String> get categories => List.from(_category);
  List<String> get latestShoes => List.from(_latestShoes);

  final List _image = [
    'assets/images/men/men1.png',
    'assets/images/men/men2.png',
    'assets/images/men/men3.png',
    'assets/images/men/men4.png',
    'assets/images/men/men5.png',
    'assets/images/men/men6.png',
    'assets/images/men/men7.png',
    'assets/images/men/men8.png',
    'assets/images/men/men9.png',
    'assets/images/men/men10.png',
    'assets/images/men/men11.png',
  ];

  final List<String> _names = [
    'FlexStride X1',
    'Velocity Boost 500',
    'PowerRush Elite',
    'TurboFit Racer',
    'AeroSprint Pro',
    'MaxGrip Fusion',
    'RapidBounce React',
    'DynaFit Surge',
    'HyperMotion Force',
    'UltraPulse Rush',
    'SwiftStride Blaze'
  ];

  final List<String> _prices = [
    '\$59.99',
    '\$74.95',
    '\$89.50',
    '\$112.99',
    '\$64.75',
    '\$95.00',
    '\$79.99',
    '\$119.99',
    '\$88.25',
    '\$105.50',
    '\$69.95',
  ];

  final List<Color> _colors = [
    const Color(0xffa71318),
    const Color(0xff655620),
    Colors.black,
    Colors.grey,
    const Color(0xff005ca5),
    Colors.white,
    Colors.green,
    Colors.white,
    const Color(0xff655620),
    const Color(0xff582130),
    const Color(0xffc6ec64)
  ];

  final List<String> _category = ['Men'];

  final List<String> _latestShoes = [
    'assets/images/men/men5.png',
    'assets/images/men/men7.png',
    'assets/images/men/men9.png',
    'assets/images/men/men11.png',
  ];
}

class WomenItems {
  List<String> get images => List.from(_image);
  List<String> get names => List.from(_names);
  List<String> get prices => List.from(_prices);
  List<Color> get colors => List.from(_colors);
  List<String> get categories => List.from(_category);
  List<String> get latestShoes => List.from(_latestShoes);

  final List _image = [
    'assets/images/women/women1.png',
    'assets/images/women/women2.png',
    'assets/images/women/women3.png',
    'assets/images/women/women4.png',
    'assets/images/women/women5.png',
    'assets/images/women/women6.png',
    'assets/images/women/women7.png',
    'assets/images/women/women8.png',
    'assets/images/women/women9.png',
    'assets/images/women/women10.png',
    'assets/images/women/women11.png',
    'assets/images/women/women12.png',
  ];
  final List<String> _names = [
    'BlossomStride',
    'RadiantRun',
    'GracefulGlide',
    'SerenityStep',
    'EnchantFlex',
    'StarlitSprint',
    'AuroraLeap',
    'LunaLace',
    'ElegantEndurance',
    'DazzleDash',
    'HarmonyHustle',
    'RosyRebound'
  ];
  final List<String> _prices = [
    '\$64.99',
    '\$79.95',
    '\$109.99',
    '\$54.50',
    '\$89.75',
    '\$72.25',
    '\$129.50',
    '\$47.99',
    '\$96.80',
    '\$69.45',
    '\$118.25',
    '\$83.60'
  ];
  final List<dynamic> _colors = [
    const Color(0xfff28896),
    const Color(0xffbbbfc9),
    const Color(0xffdf452b),
    const Color(0xffc80058),
    const Color(0xffd89004),
    const Color(0xffee0f25),
    const Color(0xffa5a4a7),
    const Color(0xff003b7e),
    Colors.black,
    const Color(0xffe81764),
    const Color(0xffed78cf),
    const Color(0xffc8224e)
  ];
  final List<String> _category = ['Women'];

  final List<String> _latestShoes = [
    'assets/images/women/women5.png',
    'assets/images/women/women7.png',
    'assets/images/women/women9.png',
    'assets/images/women/women11.png',
  ];
}

class KidsItems {
  List<String> get images => List.from(_image);
  List<String> get names => List.from(_names);
  List<String> get prices => List.from(_prices);
  List<Color> get colors => List.from(_colors);
  List<String> get categories => List.from(_category);
  List<String> get latestShoes => List.from(_latestShoes);

  final List _image = [
    'assets/images/kids/kids1.png',
    'assets/images/kids/kids2.png',
    'assets/images/kids/kids3.png',
    'assets/images/kids/kids4.png',
    'assets/images/kids/kids5.png',
    'assets/images/kids/kids6.png',
    'assets/images/kids/kids7.png',
    'assets/images/kids/kids8.png',
    'assets/images/kids/kids9.png',
  ];
  final List<String> _names = [
    'BlossomStride',
    'RadiantRun',
    'GracefulGlide',
    'SerenityStep',
    'EnchantFlex',
    'StarlitSprint',
    'AuroraLeap',
    'LunaLace',
    'ElegantEndurance',
  ];
  final List<String> _prices = [
    '\$64.99',
    '\$79.95',
    '\$109.99',
    '\$54.50',
    '\$89.75',
    '\$72.25',
    '\$129.50',
    '\$47.99',
    '\$96.80',
  ];
  final List<dynamic> _colors = [
    const Color(0xffb17f84),
    const Color(0xffced4e6),
    const Color(0xffeceae4),
    const Color(0xffa76d7c),
    const Color(0xffede5ea),
    const Color(0xffc07c44),
    const Color(0xffe5c800),
    const Color(0xff4d4d4d),
    Color(0xffcac2c5),
  ];
  final List<String> _category = ['Kids'];

  final List<String> _latestShoes = [
    'assets/images/kids/kids5.png',
    'assets/images/kids/kids7.png',
    'assets/images/kids/kids9.png',
    'assets/images/kids/kids3.png',
  ];
}

class Brands {
  List<String> get brands => List.from(_brands);

  final List<String> _brands = [
    'assets/images/brands/brand1.jpeg',
    'assets/images/brands/brand2.jpeg',
    'assets/images/brands/brand3.jpeg',
    'assets/images/brands/brand4.jpeg',
  ];
}
