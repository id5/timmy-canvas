import 'package:flutter/material.dart';

class ColorsConfig {
  // Primárias
  static final Color primary = const Color(0xFF9d368f);
  static final Color secondary = const Color(0xFFf8c760);

  // Terciárias
  static final Color black = const Color(0xFF000000);
  static final Color white = const Color(0xFFFFFFFF);

  // Secundárias
  static final Color third = const Color(0xFF707070);
  static final Color fourth = const Color(0xFF555555);

  // Decisões simples
  static final Color red = const Color(0xFFFF0000);
  static final Color green = const Color(0xFF1CBE05);
  static final Color blue = const Color(0xFF247FF2);

  // Canvas
  static final Color canvasGreen = const Color(0xFFb5d3a7);
  static final Color canvasRed = const Color(0xFFe58e80);

  // Cores com opacidade
  static final Color primaryWithOpacity = primary.withOpacity(.6);
  static final Color secondaryWithOpacity = secondary.withOpacity(.6);
  static final Color redWithOpacity = red.withOpacity(.6);
  static final Color greenWithOpacity = green.withOpacity(.6);
  static final Color blueWithOpacity = blue.withOpacity(.6);
}
