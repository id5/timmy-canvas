import 'package:timmy_web_flutter/configs/colors_config.dart';
import 'package:flutter/material.dart';

class TextStylesConfig {
  // ! Main – White
  static final TextStyle mainWhite = TextStyle(
    fontFamily: 'Quicksand',
    color: ColorsConfig.white,
  );

  static final TextStyle mainBoldWhite = TextStyle(
    fontFamily: 'Quicksand',
    color: ColorsConfig.white,
    fontWeight: FontWeight.bold,
  );

  // ! Main – Black
  static final TextStyle mainBlack = TextStyle(
    fontFamily: 'Quicksand',
    color: ColorsConfig.black,
  );

  static final TextStyle mainBoldBlack = TextStyle(
    fontFamily: 'Quicksand',
    color: ColorsConfig.black,
    fontWeight: FontWeight.bold,
  );

  // ! Drawer
  static final TextStyle titleDrawer = TextStyle(
    fontFamily: 'Quicksand',
    color: ColorsConfig.secondary,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle subtitleDrawer = TextStyle(
    fontFamily: 'Quicksand',
    color: ColorsConfig.third,
  );

  // ! Modal
  static final TextStyle titleModal = TextStyle(
    fontFamily: 'Quicksand',
    color: ColorsConfig.secondary,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle contentModal = TextStyle(
    fontFamily: 'Quicksand',
    color: ColorsConfig.third,
  );

  static final TextStyle buttonModalRed = TextStyle(
    fontFamily: 'Quicksand',
    color: ColorsConfig.red,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle buttonModalGreen = TextStyle(
    fontFamily: 'Quicksand',
    color: ColorsConfig.green,
    fontWeight: FontWeight.bold,
  );

  // ! AppBar
  static final TextStyle appBarTitle = TextStyle(
    fontFamily: 'Quicksand',
    color: ColorsConfig.white,
    fontWeight: FontWeight.bold,
  );

  // ! Toast
  static final TextStyle toast = TextStyle(
    fontFamily: 'Quicksand',
    color: ColorsConfig.white,
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
  );
}
