import 'package:flutter/material.dart';
import 'package:timmy_web_flutter/configs/colors_config.dart';
import 'package:timmy_web_flutter/pages/home_page.dart';

class EntryPointConfig extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TimmY',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: ColorsConfig.primary,
        errorColor: ColorsConfig.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
